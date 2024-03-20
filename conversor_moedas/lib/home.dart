import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //importa o pacote http

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? _precobit;
  final TextEditingController valor = TextEditingController();
  int op = 0;
  int op2 = 0;
  double valor1 = 0;
  double valor2 = 0;
  double valorMemoria = 0;

  _consultaprecoBitcoin() async{
    
    String url = "https://blockchain.info/ticker"; //url com api
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> dados = json.decode(response.body);
    print("Código do stts da resposta da api: ${response.statusCode.toString()}");
    setState(() {
      _precobit = dados["BRL"]["buy"].toString();
      print(_precobit);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultador de bitcoin"),),
        body: Center(
          child: Stack(alignment: AlignmentDirectional.center,
          
          children: [
            Container(width: 400, height: 800, color: Colors.white,),
            
            Positioned(
            top:0,
            left: 0,

            child: Container(
              width: 400,height: 150,color: Colors.black,
            )),
            Positioned(
              top: 5,
              left: 5,
              child: Container(width: 390, height: 140, color: Colors.yellowAccent, child: Image.network("https://raw.githubusercontent.com/danielvieira95/DESM-2/master/Apps-TA/app_aula07_bitcoin/imagens/bitcoin.png", fit: BoxFit.fill,) ,)),
          
          Positioned(
            top: 180,
            left: 80,
            child: Text("Valor do bitcoin em reais\n               $_precobit", style: TextStyle(fontSize: 18),),),
          
          Positioned(
            top: 250,
            left: 0,
            child: Container(
              width: 400,
              height: 45,
              color: Colors.white,
              child: TextField(
                keyboardType: TextInputType.number,
                //  decoration: InputDecoration(labelText: "digite o valor a ser convertido"),
                controller: valor,
              ),
            )),

            Positioned(
              top: 310,
              left: 80,
              
              child: Text("ORIGEM")),

            Positioned(
              top: 340,
              left: 50,
              
              child: 
               
            Radio<int>(
              value: 1,
              groupValue: op,
              onChanged: (value) {
              setState(() {
                op = 1;
                double v = double.tryParse(valor.text) ?? 0;
                valor1 = v;
                valorMemoria = v;
                
              });
              },
              ),
              
              ),
            
            Positioned(
              top: 354,
              left: 90,
              child: Text("R\$ ")),
            Positioned(
              top: 370,
              left: 50,
              
              child: 
               
            Radio<int>(
              value: 2,
              groupValue: op,
              onChanged: (value) {
              setState(() {
                op = 2;
                double v = double.tryParse(valor.text) ?? 0;
                // valor1 = v * 0.18;
                valor1 = v;
                valorMemoria = v * 5.03;
                
              });
              },
              ),
              
              ),
            
            Positioned(
              top: 384,
              left: 90,
              child: Text("Euro")),

              Positioned(
              top: 400,
              left: 50,
              
              child: 
               
            Radio<int>(
              value: 3,
              groupValue: op,
              onChanged: (value) {
              setState(() {
                op = 3;
                double v = double.tryParse(valor.text) ?? 0;
                // valor1 = v * 0.20;
                valor1 = v;
                valorMemoria = v * 5.47;
              });
              },
              ),
              
              ),
            
            Positioned(
              top: 414,
              left: 90,
              child: Text("Dólar")),

            Positioned(
              top: 310,
              right: 80,
              
              child: Text("Destino")),

            Positioned(
              top: 340,
              right: 50,
              
              child: 
               
            Radio<int>(
              value: 1,
              groupValue:op2,
              onChanged: (value) {
              setState(() {
               op2 = 1;
              });
              },
              ),
              
              ),
            
            Positioned(
              top: 354,
              right: 90,
              child: Text("R\$ ")),
            Positioned(
              top: 370,
              right: 50,
              
              child: 
               
            Radio<int>(
              value: 2,
              groupValue:op2,
              onChanged: (value) {
              setState(() {
               op2 = 2;
              });
              },
              ),
              
              ),
            
            Positioned(
              top: 384,
              right: 90,
              child: Text("Euro")),

              Positioned(
              top: 400,
              right: 50,
              
              child: 
               
            Radio<int>(
              value: 3,
              groupValue:op2,
              onChanged: (value) {
              setState(() {
               op2 = 3;
              });
              },
              ),
              
              ),
            
            Positioned(
              top: 414,
              right: 90,
              child: Text("Dólar")),

            Positioned(
              top: 452,
              right: 0,
              child: Container(width: 400, height: 1, color: Colors.black,)),

            Positioned(
              top: 470,
              left: 80,
              child: Text("Valor a ser convetido: ${valor1}")),

            Positioned(
              top: 500,
              left: 80,
              child: Text("Valor convertido: ${valor2}")),

            Positioned(
              top: 530,
              left: 30,
              child: ElevatedButton(onPressed: _consultaprecoBitcoin, child: Text("verificar"),)),
              Positioned(
              top: 530,
              left: 150,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  if(op2==1){
                    
                    
                    valor2 = valorMemoria * 0.0000032;
                
                  }
                  if(op2==2){
                  
                 
                  valor2 = valorMemoria * 0.000017;
                  }
                  if(op2==3){
                  
                  
                  valor2 = valorMemoria * 0.000016;
                  }


                });
              }, child: Text("Calcular"),)),
            
             Positioned(
              top: 530,
              right: 30,
              child: ElevatedButton(onPressed: (){
               setState(() {
                 valor1 = 0;
                 valor2 = 0;
                 valorMemoria = 0;
                 valor.text = '';

               }); 
              }, child: Text("limpar"),)),
             
            





          // ElevatedButton(onPressed: _consultaprecoBitcoin, child: Text("verificarrrr"),)
        ],),
        
          ),
          
          
    );
  }
}