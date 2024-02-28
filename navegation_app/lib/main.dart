import 'package:flutter/material.dart'; // Pacote para o sistema operacional android

// função principal
void main() {
  // Run app é a função que vai chamar a tela do aplicativo
  runApp( NavBottom()); // Material APP é a função necessária para chamar a classe criada
}
// Classe NavBottom do tipo stateless, pois não tem widgets dinamicos
class NavBottom extends StatelessWidget {
  const NavBottom({super.key}); // construtor
 
  @override
  Widget build(BuildContext context) {
    // Scaffold é o layout semipronto do aplicativo
    return MaterialApp(
      home:   // app bar é a barra do aplicativo
                
          NavigatorScreen());
    
  }
}
// Classe do tipo stateful 
class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});
  
  @override
  // Variavel state que monitora os widgets da classe
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int selectIndex =0;
  // TextStyle tipo de variavel para receber parametros de acordo com o tipo da fonte do texto
  static const TextStyle optionStyle = TextStyle(fontSize:30,fontWeight: FontWeight.bold);
  // Cria uma lista de widgets para utilizar no navigator bar
  static const List<Widget> _widgetOptions= <Widget> [
    TelaHome(),
    CheckBox(),
    rb(),
    Text('Index 3: Configurações',style:optionStyle),

  ];
  // Funçao que muda o index conforme o icone é pressionado
  void showItemTrap(int index){
    setState(() {
      selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // Widget Scaffold 
    return Scaffold(
      appBar: AppBar(
        title: Text("App Navigator Bar"),
      ),
      // Center centraliza o widget
      body: Center(
        // .elementAt permite passar um numero como index para o widget
        child: _widgetOptions.elementAt(selectIndex),
      ),
      // criar o bottom navigator

       bottomNavigationBar: BottomNavigationBar(
        // itens é cada item do navigation bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Escola',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Negócios',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.black,
          ),
          ],
           currentIndex: selectIndex,
        selectedItemColor: Colors.amber,
        onTap:showItemTrap ,
    ));
  }
}

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String msg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(color: Colors.blueGrey, width: 250,height: 150,
            child: Text("$msg", style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              msg = "SENAI";
            });
            

          }, child: Text("Mensagem")),
          ElevatedButton(onPressed: (){
            setState(() {
              msg = "Neymar";
            });
            

          }, child: Text("Mensagem 2"))
        ],
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => CheckBoxState();
}

class CheckBoxState extends State<CheckBox> {
   // variavel para armazenar o valor do check box
   
   bool ischeck = false;
   bool ischeck2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Check Box 1"),
            Checkbox(
              // Value é o parametro do check box
              // ischeck variavel booleana que recebe o parametro value do check box
            value:  ischeck, 
            onChanged:(bool? value){
              setState(() {
                ischeck = value!; //inverte o estado como uma porta not
                
              });
            }
            
            
            
             ),
              Text("Status do checkbox $ischeck"),
               Text("Check Box 2"),
            Checkbox(
              // Value é o parametro do check box
              // ischeck variavel booleana que recebe o parametro value do check box
            value:  ischeck2, 
            onChanged:(bool? value2){
              setState(() {
                ischeck2 = value2!; //inverte o estado como uma porta not
                
              });
            }
            
            
            
             ),
              Text("Status do checkbox 2 $ischeck2"),
          ],
        ),
      ),
    );
  }
}


class rb extends StatefulWidget {
  const rb({super.key});

  @override
  State<rb> createState() => _rbState();
}

class _rbState extends State<rb> {
  int op = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Radio buttom", style: TextStyle(fontSize: 20),),

          RadioListTile<int>(
            title: Text("Opção 1"),
            value: 1,
            groupValue: op,
            onChanged: (value){
              setState(() {
                op=1;
              });
            }),
            RadioListTile<int>(
            title: Text("Opção 2"),
            value: 2,
            groupValue: op,
            onChanged: (value){
              setState(() {
                op=2;
              });
            }),
            RadioListTile<int>(
            title: Text("Opção 3"),
            value: 3,
            groupValue: op,
            onChanged: (value){
              setState(() {
                op=3;
              });
            }),

        ]),
    );
  }
}