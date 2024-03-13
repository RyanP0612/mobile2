import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItaReceita extends StatefulWidget {
  double w = 300;
  double h = 45;
  String text = "Clique no Botão para aparecer sua receita";

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
                "assets/pizzas.jpg",
                fit: BoxFit.fill,
              ),
            )
          ])),
          Text(
            "           Receita de pizza italiana👨‍🍳",
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
                widget.h = 1000;
                widget.w = 320;
                widget.text =
                    "INGREDIENTES\n- 500 gr de farinha 00 (teor de glúten superior a 11%)\n- 15 ml de azeite virgem extra\n- 8 gr de sal fino\n- 300 ml de água fria\n- 10 gr fermento padeiro (biológico fresco)\n- Farinha de milho para abrir a massa\n\nPREPARAÇÃO\n- Juntar a farinha com o sal, o azeite e 250 ml de água.\n- Amassar em primeira velocidade (lenta) até misturar bem todos os ingredientes.\n- Mudar para segunda velocidade (rápida) e amassar até a massa começar a ganhar liga, adicionando a restante água aos poucos.\n- Adicionar o fermento e amassar até a massa ficar bem elástica e atingir ponto de véu*.\n- Transferir a massa para uma bancada, cortar em porções com o peso desejado, conforme o tamanho das pizzas, enrolar as porções de massa em bolas com as mãos, colocar num tabuleiro untado com azeite, tapar com película aderente e deixar levedar até dobrar de tamanho.\n- Polvilhar uma bancada com farinha de milho, dispor uma bola de massa por cima, polvilhar com farinha de milho, espalmar um pouco a massa no centro com os dedos e esticar em formato redondo com as mãos, vincando o rebordo com os dedos.\n- Adicionar um pouco de molho de pizza e espalhar com uma colher, deixando o rebordo sem molho.\n- Rechear com os ingredientes desejados.\n\nFornos de lares:\n- Inserir a pá de pizzas por baixo da pizza e transferir a pizza diretamente para a pedra do forno, pré-aquecido a 350ºC.\n- Deixar cozer 2 a 3 minutos, virar a pizza ao contrário com a pá e deixar cozer mais 2 minutos.\n- Retirar a pizza do forno com a pá e transferir para um prato.\n- Servir";
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
