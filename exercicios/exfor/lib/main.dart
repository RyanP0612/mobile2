
import 'menu.dart';
import 'dart:io';
import 'package:flutter/material.dart';
void main() {
  // run app função que constrói a tela do app
  // materialapp função do widget para android
  // home parâmetro inicial para chamar a tela
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  final TextEditingController campoMail = TextEditingController();
  final TextEditingController senha = TextEditingController();
  final String login = "ryan1234";
  final String password = "1234";
  String? alerta ="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "         Página de Login",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.white),
                  child: Image.asset(
                    "assets/logo.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Text(""),
                Container(
                  color: Colors.red,
                  width: 400,
                  height: 45,
                  child: Text(
                    "EMAIL",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "digite seu email"),
                  controller: campoMail,
                ),
                Container(
                  color: Colors.red,
                  width: 400,
                  height: 45,
                  child: Text(
                    "SENHA",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "digite sua senha"),
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: senha,
                ),
                Text("$alerta", style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {
                    if (campoMail.text == login && senha.text == password) {
                      senha.text = '';
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuPrincipal()),
                      );
                      print("Login bem-sucedido!");
                    }
                   
                     
                    alerta = "digite novamente, erros encontrados";
                    
                    

                    
                  },
                  child: Text("Enviar"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void voltar(BuildContext context) {
  Navigator.pop(context);
}
