import 'package:flutter/material.dart';
import 'main.dart';

class Telaop extends StatelessWidget {
  const Telaop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela opçoes'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container( color: Colors.red, width: 400, height: 180,
          child: Text("Tela opções", style: TextStyle(fontSize: 25),)),
          ElevatedButton(
            onPressed: () {
              voltar(context);
            },
            child: Text("Voltar"),
          ),
        ]),

    );
  }
}
