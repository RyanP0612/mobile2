import 'package:flutter/material.dart';//permite utilizar os widgets para android


//void main funcao principal
void main() {
  runApp(Home());
}

// cria a classe home do tipo stateless
class Home extends StatelessWidget {
  const Home({super.key}); //construtor

  @override //permite a reescrita de funções na classe home

  //widget build cria a tela do app
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
     appBar: AppBar(
      title: Text("Appzao"),

     ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            
            color: Colors.red,
            height: 65,
            width: 65,
             ),
             Container(
            color: Colors.amberAccent,
            height: 200,
            width: 100,
            ),
            Container(
            color: Colors.amberAccent,
            height: 20,
            width: 120,
            ),
            ElevatedButton(onPressed:(){ 
              print("botão pressionado");
            },
            child: Text("mensagem"),
            ),
            
            ], 
          ),
     ),
         
      ),
    );
  }
}