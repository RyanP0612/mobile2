import 'package:flutter/material.dart';//permite utilizar os widgets para android


//void main funcao principal
void main() {
  runApp(TelaPrincipal());
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App dinamico",style: TextStyle(fontSize: 22,)
        ),
       ), 
        body: Column(
          children: [
            Contador(),

          ],
        ) ,
      
      )
    );
  }
}

class Contador extends StatefulWidget {
  
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue, height: 150, width: 150, child: Text("${cont}", style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
            
          ),Text("contagem"),



          Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
              ElevatedButton(onPressed: (){
            print("oi");
            setState(() {
              cont++;
              
            });
          },         
           child: Text("Contador"),
           style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                      BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.red,
                        width: 2.0,
                      ),
                      BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.red,
                        width: 2.0,
                      ),
                      10.0),
                ),
              ),
            ),
            
            ElevatedButton(onPressed: (){
            print("oi");
            setState(() {
              cont = 0;
              
            });
          },
          
           child: Text("Zerar"),
           style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide.lerp(
                      BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 2.0,
                      ),
                      BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 2.0,
                      ),
                      10.0),
                ),
              ),
            ),

            ],)
          ),
          
          
          
        ],
      ),
    );
  }
}
