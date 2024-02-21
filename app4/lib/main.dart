import 'package:app4/tela2.dart';
import 'package:app4/tela3.dart';
import 'package:app4/tela4.dart';
import 'package:flutter/material.dart'; //pacote de widgets para android

// função principal do app
void main() {
  // run app função que constrói a tela do app
  // materialapp função do widget para android
  // home parâmetro inicial para chamar a tela
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  // Constrói a tela do app
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo 4"),
      ),
      // body é o corpo do scaffold
      // column coluna do app
      body: Column(
        // children estabelece relação com os demais widgets com a coluna
        mainAxisAlignment: MainAxisAlignment.center, //alinhamento principal do widget column
        children: [
        Container(
          color: Colors.deepPurple, width: 400, height: 180,
          child: Text("Tela 1", style: TextStyle(fontSize: 25),),),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TelaSecundaria(),));
            
          }, child: Text("Tela 2")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Telaop(),));
            
          }, child: Text("Opções")),
           ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CampoTexto(),));
            
          }, child: Text("Tela texto")),
          
          // child é a relação com 1 widget

      ]
      ),
    );
  }
}


void voltar(BuildContext context) {
  
  Navigator.pop(context);
}
