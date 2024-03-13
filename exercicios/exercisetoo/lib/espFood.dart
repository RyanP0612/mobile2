import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EspReceita extends StatefulWidget {
  double w = 300;
  double h = 45;
  String text = "Clique no Botão para aparecer sua receita";

  @override
  State<EspReceita> createState() => _EspReceitaState();
}

class _EspReceitaState extends State<EspReceita> {
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
                "assets/burritos.jpg",
                fit: BoxFit.fill,
              ),
            )
          ])),
          Text(
            "           Receita de burrito de atún👨‍🍳",
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
                widget.h = 560;
                widget.w = 320;
                widget.text =
                    "Tortillas de trigo o maíz (Tortilha de trigo ou milho) – tem umas que já vem prontas no mercado\n- Una lata de atún (uma lata de atum)\n- Tomate\n-Cebola (cebola)\n-Queso mussarela (queijo mussarela)-\nLimón (limão)\n- Una cuchara de mayonesa (uma colher de maionese)\n - Molho de soja (shoyu)\n\nNuma frigideira (2) aqueça (1) o óleo para dourar a cebola e o tomate. Nessa mesma panela colocamos meia lata de atum, uma colher de maionese e molho de soja a gosto. Deixamos aquecer um pouco e acrescentamos o suco de meio limão. Mexemos (3) até secar um pouco. Em outra panela aquecemos a tortilha por alguns segundos de cada lado, colocamos em um prato, colocamos o queijo e no meio distribuímos o recheio (4) que fizemos na panela. Enrolamos a tortilha e está pronta para comer!";
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
