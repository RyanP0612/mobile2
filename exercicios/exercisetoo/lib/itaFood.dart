import 'package:flutter/material.dart';

class ItaReceita extends StatefulWidget {
  const ItaReceita({super.key});

  @override
  State<ItaReceita> createState() => _ItaReceitaState();
}

class _ItaReceitaState extends State<ItaReceita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("receitasss"),
      ),
      body: Center(
        child: Stack(
          children: [
            
            Container(width: 300, height: 300, color: Colors.amber, child: Text("neymar"),),
            ElevatedButton(onPressed: (){
              voltar(context);
            }, child: Text("voltar"),)
          ],
        ),
      ),
    );
  }
}

void voltar(BuildContext context) {
  
  Navigator.pop(context);
}