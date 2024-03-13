import 'package:exfor/triangulo.dart';
import 'package:flutter/material.dart';
import 'main.dart';
<<<<<<< HEAD
import 'trapezio.dart';
import 'ohm.dart';
=======
>>>>>>> 975fb4c1f0ed15d2e2abc770623f7d2251e926b0

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU PRINCIPAL"),
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
                    Container(width: 400, height: 665, color: Colors.black,),
                    Container(
                  width: 380,
                  height: 645,
                  color: Colors.red,
                  child: Text("Bem-vindo, estamos no Menu principal, selecione a operação desejada!!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    ),
                    
                    Positioned(
                    
                      top: 70,
                      child: Container(
                        width: 400,
                        height: 10,
                        color: Colors.black,
                      ),),

                      Positioned(
                      top: 100,
<<<<<<< HEAD
                      left: 10,
                      child: Container(
                        width: 250,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),  color:const Color.fromARGB(255, 177, 177, 177)),
=======
                      left: 6,
                      child: Container(
                        width: 250,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.grey,),
>>>>>>> 975fb4c1f0ed15d2e2abc770623f7d2251e926b0
                        
                        child: Text(" Calcular área do triângulo:\n🔼📐", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),),

                      Positioned(
                        top: 120,
                        right: 35,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalcT()),
                      );

<<<<<<< HEAD
                      }, child: Icon(Icons.arrow_circle_right))),

                       Positioned(
                      top: 210,
                      left: 10,
                      child: Container(
                        width: 250,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color:const Color.fromARGB(255, 177, 177, 177),),
                        
                        child: Text(" Calcular área do trapézio:\n📏📐", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),),

                      Positioned(
                        top: 230,
                        right: 35,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalcTrap()),
                      );

                      }, child: Icon(Icons.arrow_circle_right))),
                      Positioned(
                      top: 320,
                      left: 10,
                      child: Container(
                        width: 250,
                        height: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color:const Color.fromARGB(255, 177, 177, 177),),
                        
                        child: Text("  1º Lei de Ohm:📝➕➖", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),),

                      Positioned(
                        top: 340,
                        right: 35,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OhmCalc()),
                      );

=======
>>>>>>> 975fb4c1f0ed15d2e2abc770623f7d2251e926b0
                      }, child: Icon(Icons.arrow_circle_right)))
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
