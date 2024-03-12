
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
  final String login = "1234";
  final String password = "1234";
  String? alerta;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("LOGIN"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(""),
            Container(
              width: 80,
              height: 80,
              child: Image.asset(
                "assets/a.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              color: Colors.red,
              width: 400,
              height: 50,
              child: Text(
                "EMAIL",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "digite seu email"),
              controller: campoMail,
            ),
            Container(
              color: Colors.lightBlue,
              width: 400,
              height: 80,
              child: Text("SENHA", style: TextStyle(fontSize: 25)),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "digite sua senha"),
              obscureText: true,
              obscuringCharacter: "*",
              controller: senha,
            ),
            Text("$alerta", style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () {
                if (campoMail.text == login && senha.text == password) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPrincipal()),
                  );
                  print("Login bem-sucedido!");
                }

                SetState() {
                  alerta = "digite novamente, erros encontrados";
                }
              },
              child: Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}

void voltar(BuildContext context) {
  Navigator.pop(context);
}
