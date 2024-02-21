
import 'package:flutter/material.dart';
import 'main.dart';

class TelaSecundaria extends StatelessWidget {
  const TelaSecundaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container( color: Colors.green, width: 400, height: 180,
          child: Text("Tela 2", style: TextStyle(fontSize: 25),)),
          ElevatedButton(
            onPressed: () {
              voltar(context);
            }, child: Text("Voltar")),
        ]),


    );
  }
}