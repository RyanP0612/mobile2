import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import "menu.dart";

class OhmCalc extends StatefulWidget {
  @override
  State<OhmCalc> createState() => _OhmCalcState();
}

class _OhmCalcState extends State<OhmCalc> {
  @override
  final TextEditingController v1 = TextEditingController();
  final TextEditingController v2 = TextEditingController();
  double resultado = 0.0;
  int op = 0;
  String a = "?";
  String b = "?";
  String c = "?";
  int size = 10;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1° Lei de Ohm☀🔌"),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 400,
                      height: 820,
                      color: Colors.black,
                    ),
                    Container(
                      width: 380,
                      height: 800,
                      color: Colors.red,
                      child: Text(
                        "Bem-vindo, estamos no âmbito da 1° lei de Ohm e abaixo temos sua fórmula:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Positioned(
                      top: 100,
                      child: Container(
                        width: 400,
                        height: 10,
                        color: Colors.black,
                      ),
                    ),

                    Positioned(
                      top: 120,
                      left: 11.5,
                      child: Container(
                        width: 370,
                        height: 220,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: 21.5,
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Image.asset(
                          "assets/ohm.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 11,
                      top: 340,
                      child: Text(
                        "Partindo disso, selecione a opção desejada, seja\nU (voltagem), i (corrente) ou R (resistência)!!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 485,
                      child: Container(
                        width: 400,
                        height: 10,
                        color: Colors.black,
                      ),
                    ),

                    Positioned(
                      top: 405,
                      left: 15,
                      
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          a = "i";
                          b = "R";
                          c = "V";
                          op = 1;
                        });
                      }, child: Text("Voltagem"))),
                       Positioned(
                      top: 405,
                      left: 135,
                      
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          a = "U";
                          b = "R";
                          c = "i";
                          op = 2;
                        });
                      }, child: Text("Corrente"))),
                       Positioned(
                      top: 405,
                      left: 250,
                      
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          a = "U";
                          b = "i";
                          c = "R";
                          op = 3;
                        });
                      }, child: Text("Resistência"))),
                    
                    

                    Positioned(
                      left: 30,
                      top: 500,
                      child: Text(
                        "$a =",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Positioned(
                        top: 520,
                        left: 130,
                        child: Container(
                          width: 120,
                          height: 45,
                          color: Colors.white,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: v1,
                          ),
                        )),

                        Positioned(
                      left: 30,
                      top: 580,
                      child: Text(
                        "$b =",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Positioned(
                        top: 600,
                        left: 130,
                        child: Container(
                          width: 120,
                          height: 45,
                          color: Colors.white,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: v2,
                          ),
                        )),

                    Positioned(
                      top: 680,
                      left: 18,
                      child: ElevatedButton(
                        onPressed: () {
                          double metodo = 0.0;
                          double x = double.tryParse(v1.text) ?? 0;
                          double y = double.tryParse(v2.text) ?? 0;

                          if(op ==1){
                            metodo = x * y;
                          };
                          if(op ==2){
                            metodo = x / y;
                          };
                          if(op ==3){
                            metodo = x / y;
                          };


                          setState(() {
                            resultado = metodo;
                            print(resultado);
                          });
                        },
                        child: Text(
                          '$c =',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    Positioned(
                        top: 680,
                        left: 130,
                        child: Container(
                            width: 120,
                            height: 45,
                            color: Colors.white,
                            child: Text("$resultado",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)))),

                    //     Positioned(
                    //   top: 455,
                    //   child: Container(
                    //     width: 400,
                    //     height: 10,
                    //     color: Colors.black,
                    //   ),
                    // ),

                    // Positioned(
                    // left: 5,
                    // child: Container(
                    //   width: 150,
                    //   height: 150,
                    //   color: Colors.grey,
                    // ),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
