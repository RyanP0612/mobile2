import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import "menu.dart";

class CalcTrap extends StatefulWidget {
  @override
  State<CalcTrap> createState() => _CalcTrapState();
}

class _CalcTrapState extends State<CalcTrap> {
  @override
  final TextEditingController base1 = TextEditingController();
  final TextEditingController base2 = TextEditingController();
  final TextEditingController altura = TextEditingController();
  double resultado = 0.0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Área do Trapézio🤓📘"),
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
                      height: 720,
                      color: Colors.black,
                    ),
                    Container(
                      width: 380,
                      height: 700,
                      color: Colors.red,
                      child: Text(
                        "Bem-vindo, estamos no cálculo da área de um trapézio e abaixo temos sua fórmula:",
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
                      left: 40,
                      child: Container(
                        width: 320,
                        height: 150,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: 50,
                      child: Container(
                        width: 300,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Image.asset(
                          "assets/trapezio.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 11,
                      top: 300,
                      child: Text(
                        "Partindo disso, coloque os devidos valores para\nb (base 1), B (base 2) e h (altura)!!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 375,
                      child: Container(
                        width: 400,
                        height: 10,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 380,
                      child: Text(
                        "B = ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Positioned(
                        top: 400,
                        left: 130,
                        child: Container(
                          width: 120,
                          height: 45,
                          color: Colors.white,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: base1,
                          ),
                        )),

                    Positioned(
                      left: 30,
                      top: 460,
                      child: Text(
                        "b = ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Positioned(
                        top: 480,
                        left: 130,
                        child: Container(
                          width: 120,
                          height: 45,
                          color: Colors.white,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: base2,
                          ),
                        )),

                        Positioned(
                      left: 30,
                      top: 540,
                      child: Text(
                        "h = ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    Positioned(
                        top: 560,
                        left: 130,
                        child: Container(
                          width: 120,
                          height: 45,
                          color: Colors.white,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: altura,
                          ),
                        )),

                    Positioned(
                      top: 640,
                      left: 18,
                      child: ElevatedButton(
                        onPressed: () {
                          double b = double.tryParse(base2.text) ?? 0;
                          double B = double.tryParse(base1.text) ?? 0;
                          double h = double.tryParse(altura.text) ?? 0;

                          double area = ((b + B)* h) / 2;

                          setState(() {
                            resultado = area;
                            print(resultado);
                          });
                        },
                        child: Text(
                          'Área =',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    Positioned(
                        top: 640,
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
