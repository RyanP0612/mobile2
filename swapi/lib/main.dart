import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Pets",
     theme: ThemeData(
      primarySwatch: Colors.blueGrey,
     ),
     home: PetsScreen(),

     );
    
  }
}
class PetsScreen extends StatefulWidget {
  const PetsScreen({super.key});

  @override
  State<PetsScreen> createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen> {
  late Future<List<Pet>> futurePets; // variavel para receber o estado futuro da api com o os pets
  @override
  // Função de estado inicial para carregar a api no app
  void initState(){
    super.initState();
    futurePets = consultaPet();
  }
  Future<List<Pet>> consultaPet() async{
    final response = await http.get(Uri.parse('https://raw.githubusercontent.com/giovannamoeller/pets-api/main/db.json'));
    if(response.statusCode ==200){
      final parsed = jsonDecode(response.body);
      print(parsed);
      List<dynamic> petJson = parsed['pets'];
      return petJson.map((json)=> Pet.fromJson(json)).toList(); // método para converter o json em forma de lista
    }
    else{
      print(response.statusCode);
      throw Exception('Falha ao consumir a api');
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Pet adote"),
      ),
      body: Center(
      child: FutureBuilder<List<Pet>>(
       future: futurePets,
       builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
            itemCount: snapshot.data!.length, // tamanho do dado
            itemBuilder: (context, index) {
              return PetListItem(pet:snapshot.data![index]);
            },
            );
          }else if (snapshot.hasError){
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        },
        
        ),
        

      ),
    );
  }
}

class Pet{
  final String nome;
  final String imageurl;
  final String idade;
  final String comportamento;
  final String porte;
  final String location;
  final String tel;
  Pet({required this.nome, required this.imageurl,required this.idade, required this.comportamento,
  required this.porte, required this.location, required this.tel});
  
  factory Pet.fromJson(Map<String, dynamic> json){
    return Pet(  
    nome: json['name'],
    imageurl: json['imageUrl'],
    idade: json['age'],
    comportamento: json['behavior'],
    porte:  json['size'],
    location: json['location'],
    tel: json['phoneNumber']);



  }

}
class PetListItem extends StatelessWidget{
  final Pet pet;
  const PetListItem({Key? key, required this.pet}):super (key: key);
  @override
  Widget build (BuildContext context){
      return ListTile(
        leading:  CircleAvatar(
          backgroundImage: NetworkImage(pet.imageurl),
        ),
        title: Text(pet.nome),
        subtitle: Text("${pet.idade}, ${pet.comportamento}, ${pet.porte}, ${pet.location}"),
        onTap: () {
          
 // Implementar ação ao clicar no pet, por exemplo:
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(pet.nome),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Image.network(pet.imageurl),
                    Text('Age: ${pet.idade}'),
                    Text('Behavior: ${pet.comportamento}'),
                    Text('Size: ${pet.porte}'),
                    Text('Location: ${pet.location}'),
                    Text('Phone Number: ${pet.tel}'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}



