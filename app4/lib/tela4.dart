import 'package:flutter/material.dart';
import 'main.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController campoController = TextEditingController();
  String? a = "...";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tela caixa de texto"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Texto abaixo", style: TextStyle(fontSize: 25),),
            Container( color: Colors.pink, width: 400, height: 180,
          child: Text("$a", style: TextStyle(fontSize: 25),)),
            // campo que permite a entrada de texto no app
            TextField(
              keyboardType: TextInputType.text, // Pode ser TextInputType.name se preferir
              decoration: InputDecoration(
                labelText: "Digite...",
              ),
              controller: campoController,
            ),
             ElevatedButton(onPressed: (){
              print("${campoController.text}");
               setState(() {
              a = campoController.text;
              print(a);

                
 
                
              });
              }, child: Text("Send")),
            ElevatedButton(
            onPressed: () {
              voltar(context);
            }, child: Text("Voltar")),
          ],
        ),
      ),
    );
  }
}
