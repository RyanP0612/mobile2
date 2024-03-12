import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CanReceita extends StatefulWidget {
  double w = 300;
  double h = 45;
  String text = "Clique no Botão para aparecer sua receita";

  @override
  State<CanReceita> createState() => _CanReceitaState();
}

class _CanReceitaState extends State<CanReceita> {
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
                "assets/beavertails.jpg",
                fit: BoxFit.fill,
              ),
            )
          ])),
          Text(
            "           Receita de Beaver Tail👨‍🍳",
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
                    "INGREDIENTES:\n\n5 colheres (chá) de fermento seco ativo\n- 1 xícara de leite morno\n- 1/2 xícara de água morna\n- 1/3 xícara de açúcar\n- 1 colher (chá) de extrato de baunilha\n- 1/3 de xícara de óleo vegetal\n- 5 xícaras de farinha de trigo integral\n- 1 litro de óleo vegetal para fritar\n- 3 ovos batidos\n- 1,5 colher (chá) de sal\n\nPREPARO:\n\n1. Em um bowl, misture o fermento com uma pitada de açúcar e água morna.\n2. Deixe descansar por 5 minutos ou até o fermento começar a espumar e formar uma camada cremosa.\n3. Misture ⅓ de xícara de açúcar, extrato de baunilha, ⅓ de xícara de óleo vegetal, leite, sal, ovos e mexa até que o açúcar dissolva.\n4. Adicione metade da farinha de trigo integral e mexa bem para a massa ficar dura. Em seguida, adicione mais farinha.\n5. Coloque a massa em uma superfície enfarinhada e amasse-a enquanto joga farinha até não ficar mais pegajosa.\n6. Sove por 10 minutos ou até ficar elástico e homogêneo.\n7. Manipule a massa em formato de bola e coloque em uma tigela untada e cubra. Deixe descansar por 1 hora ou até dobrar de tamanho.\n8. Remova um pedaço da massa, do tamanho de um limão, e abra em formato oval.\n9. Aqueça o óleo a 190°C com 10 cm de profundidade.\n10. Coloque as massas abertas delicadamente no óleo quente e frite entre 1 a 2 minutos de cada lado ou até dourar.\n11. Seque o excesso de óleo com papel-toalha.\n12. Para finalizar, coloque a cobertura de sua preferência e delicie-se.";
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
