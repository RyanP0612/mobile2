import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FinReceita extends StatefulWidget {
  double w = 300;
  double h = 45;
  String text = "Clique no Botão para aparecer sua receita";

  @override
  State<FinReceita> createState() => _FinReceitaState();
}

class _FinReceitaState extends State<FinReceita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("receitasss"),
      ),
      body: ListView(
        children: [
          Center(
              child: Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              width: 320,
              height: 270,
              color: Colors.black,
            ),
            Container(
              width: 300,
              height: 250,
              color: Colors.amber,
              child: Image.asset(
                "assets/pororo.jpg",
                fit: BoxFit.fill,
              ),
            )
          ])),
          Text(
            "           Receita de Poronkaristys👨‍🍳",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Center(
            child: AnimatedContainer(
              width: widget.w,
              height: widget.h,
              color: Colors.white,
              duration: Duration(seconds: 1),
              child: Text(
                "${widget.text}",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.h = 700;
                widget.w = 320;
                widget.text =
                    "INGREDIENTES:\n\n- 500g de Rena, Veado, Bife ou outros cortes de Carne (ordem de preferência), corte em fatias curtas e finas (o congelamento parcial ajuda a cortar)\n- 1 cebola\n- Mais de 10 grãos de pimenta inteiros\n- Água ou Cerveja, para cobrir\n- Batatas Novas, a variedade mais cerosa que você pode encontrar\n- Endro, um punhado\n- Compota de Lingonberry\n\nPREPARO:\n\nPolvilhe sal nas fatias de carne e frite com a cebola e a pimenta até dourar bem. Coloque numa assadeira com tampa e em seguida despeje um pouco do líquido do cozimento na frigideira original e esfregue com uma espátula para retirar todo o suco da carne. Despeje o líquido sobre a Carne e leve ao forno a 200C por uma hora.\n25 minutos antes do prato principal começar a ferver as Batatas Novas com Endro e Sal (basta cobrir com Água), assim que a Água começar a ferver, cozinhe por 15-20 minutos.\nSirva ainda quente com molho de lingonberry (a Ikea vende). Você poderia usar Cranberry, embora não seja tão bom, Rowanberry é um substituto muito melhor e Quince é razoável.\nAproveite!";
              });
            },
            child: Icon(Icons.play_circle),
          )
        ],
      ),
    );
  }
}

void voltar(BuildContext context) {
  Navigator.pop(context);
}
