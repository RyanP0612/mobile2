import 'package:flutter/material.dart'; // Pacote para o sistema operacional android

// função principal
void main() {
  // Run app é a função que vai chamar a tela do aplicativo
  runApp(
      NavBottom()); // Material APP é a função necessária para chamar a classe criada
}

// Classe NavBottom do tipo stateless, pois não tem widgets dinamicos
class NavBottom extends StatelessWidget {
  const NavBottom({super.key}); // construtor

  @override
  Widget build(BuildContext context) {
    // Scaffold é o layout semipronto do aplicativo
    return MaterialApp(home: rb());
    // app bar é a barra do aplicativo
  }
}

class rb extends StatefulWidget {
  const rb({super.key});

  @override
  State<rb> createState() => _rbState();
}

class _rbState extends State<rb> {
  int op = 0;
  int op2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App exercicio 3"),
      ),
      body: Column(children: [
        Text(
          "Qual seu genêro?",
          style: TextStyle(fontSize: 20),
        ),
        RadioListTile<int>(
            title: Text("Masculino"),
            value: 1,
            groupValue: op,
            onChanged: (value) {
              setState(() {
                op = 1;
              });
            }),
        RadioListTile<int>(
            title: Text("Feminino"),
            value: 2,
            groupValue: op,
            onChanged: (value) {
              setState(() {
                op = 2;
              });
            }),
        RadioListTile<int>(
            title: Text("Outro ou prefiro não me declarar"),
            value: 3,
            groupValue: op,
            onChanged: (value) {
              setState(() {
                op = 3;
              });
            }),
        Text(
          "Qual seu estado civil?",
          style: TextStyle(fontSize: 20),
        ),
        RadioListTile<int>(
            title: Text("Solteiro"),
            value: 1,
            groupValue: op2,
            onChanged: (value) {
              setState(() {
                op2 = 1;
              });
            }),
        RadioListTile<int>(
            title: Text("Casado"),
            value: 2,
            groupValue: op2,
            onChanged: (value) {
              setState(() {
                op2 = 2;
              });
            }),
        RadioListTile<int>(
            title: Text("Separado"),
            value: 3,
            groupValue: op2,
            onChanged: (value) {
              setState(() {
                op2 = 3;
              });
            }),
        RadioListTile<int>(
            title: Text("Divorciado"),
            value: 4,
            groupValue: op2,
            onChanged: (value) {
              setState(() {
                op2 = 4;
              });
            }),
        RadioListTile<int>(
            title: Text("Viúvo"),
            value: 5,
            groupValue: op2,
            onChanged: (value) {
              setState(() {
                op2 = 5;
              });
            }),
      ]),
    );
  }
}
