import 'package:flutter/material.dart';

void main() {
  runApp(const CampoTexto());
}

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController campo_nome = TextEditingController();
  String? valor;
  Color cor = Colors.red;
  String senha = "123";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App caixa de texto"),
        ),
        body: Column(
          children: [
            // campo que permite a entrada de texto no app
            TextField(
              keyboardType: TextInputType.name, //seleciona o tipo de entrada do
              decoration: InputDecoration(
                labelText: "digite sua senha"),
                controller: campo_nome,
            ),
            ElevatedButton(onPressed: (){
              print("${campo_nome.text}");
               setState(() {
                
                valor = campo_nome.text;
                print(valor);
              });
              
              
            }, child: Text("verificar")),

            ElevatedButton(onPressed: (){
              print("${campo_nome.text}");
              
              if (valor == senha){
                setState(() {
                
                cor = Colors.green;
              });
              }
              else {
                setState(() {
                
                cor = Colors.red;
              });
              }
              
               
              
              
            }, child: Text("verificar senha")),
            
            Container(
            
              color: cor,
              height: 200,
              width: 200,
              child: Text("${valor}", textAlign: TextAlign.center,),
            ),

           
            
            ElevatedButton(onPressed: (){
              setState(() {
                
                valor = "";
              });
            }, child: Text("Limpar")),
          ]),
        ),
    );
  }
}