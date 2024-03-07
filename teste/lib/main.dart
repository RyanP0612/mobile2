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
    return MaterialApp(
        home: // app bar é a barra do aplicativo

            NavigatorScreen());
  }
}

// Classe do tipo stateful
class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  // Variavel state que monitora os widgets da classe
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int selectIndex = 0;
  // TextStyle tipo de variavel para receber parametros de acordo com o tipo da fonte do texto

  // Cria uma lista de widgets para utilizar no navigator bar
  static const List<Widget> _widgetOptions = <Widget>[
    TelaIndustria("img/R&L.png"),
    CheckBox("img/trator.png"),
    rb("img/saude.png"),
    econ("img/cifrao.png"),
  ];
  // Funçao que muda o index conforme o icone é pressionado
  void showItemTrap(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget Scaffold
    return Scaffold(
        appBar: AppBar(
          title: Text("App Navigator Bar"),
        ),
        // Center centraliza o widget
        body: Center(
          // .elementAt permite passar um numero como index para o widget
          child: _widgetOptions.elementAt(selectIndex),
        ),
        // criar o bottom navigator

        bottomNavigationBar: BottomNavigationBar(
          // itens é cada item do navigation bar
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.apartment),
              label: 'Indústria',
              backgroundColor: Color.fromARGB(255, 94, 94, 94),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.agriculture),
              label: 'Agricultura',
              backgroundColor: Color.fromARGB(255, 22, 206, 31),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety_outlined),
              label: 'Saúde',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Economia',
              backgroundColor: Color.fromARGB(255, 255, 191, 0),
            ),
          ],
          currentIndex: selectIndex,
          selectedItemColor: Colors.white,
          onTap: showItemTrap,
        ));
  }
}

class TelaIndustria extends StatefulWidget {
  final String imagem;
  const TelaIndustria(this.imagem, {super.key});

  @override
  State<TelaIndustria> createState() => _TelaIndustriaState();
}

class _TelaIndustriaState extends State<TelaIndustria> {
  String msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 320,
                  height: 220,
                ),
                Container(
                  color: Colors.blue,
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    widget.imagem,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            )),
            Center(
                child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 320,
                  height: 270,
                ),
                Container(
                    color: Colors.amberAccent,
                    width: 300,
                    height: 250,
                    child: Text("$msg",
                        style: TextStyle(fontSize: 17),
                        textAlign: TextAlign.left)),
              ],
            )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    msg = "Seja bem-vindo a empresa R&L Company";
                  });
                },
                child: Text("Bem-vindo")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    msg =
                        "   Desfrute dos irresistíveis sabores artesanais da R&L Company! Chocolates gourmet, bombons e balas que elevam o prazer à excelência. Descubra também nossa linha premium de suplementos de academia: proteínas em pó de alta qualidade e barras saborosas para impulsionar seus treinos.";
                  });
                },
                child: Text("Apresentação"))
          ]),
    );
  }
}

class CheckBox extends StatefulWidget {
  final String imagem;
  const CheckBox(this.imagem, {super.key});

  @override
  State<CheckBox> createState() => CheckBoxState();
}

class CheckBoxState extends State<CheckBox> {
  // variavel para armazenar o valor do check box

  bool ischeck = false;
  bool ischeck2 = false;
  String texto = '';
  String texto2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 320,
                  height: 220,
                ),
                Container(
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    widget.imagem,
                    fit: BoxFit.fill,
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.green,
                      Colors.lime,
                    ],
                  )),
                ),
              ],
            )),
            Container(
              height: 50,
              width: 320,
              color: Colors.amber,
              child: Text(
                "Pesquisa de preferência, roça ou a cidade?",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Stack(),
            Text(
              "Vote para roça🚜🌽",
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                // Value é o parametro do check box
                // ischeck variavel booleana que recebe o parametro value do check box
                value: ischeck,
                onChanged: (bool? value) {
                  setState(() {
                    ischeck = value!; //inverte o estado como uma porta not
                    if (ischeck == true) {
                      texto2 = "você votou na roça!!!";
                    } else {
                      texto2 = "";
                    } //inverte o estado como uma porta not
                  });
                }),
            Text(
              "$texto2",
              style: TextStyle(fontSize: 15),
            ),
            Text(""),
            Text(
              "Vote para cidade🏙️🏗️",
              style: TextStyle(fontSize: 15),
            ),
            Checkbox(
                // Value é o parametro do check box
                // ischeck variavel booleana que recebe o parametro value do check box
                value: ischeck2,
                onChanged: (bool? value2) {
                  setState(() {
                    ischeck2 = value2!;
                    if (ischeck2 == true) {
                      texto = "você votou na cidade!!!";
                    } else {
                      texto = "";
                    } //inverte o estado como uma porta not
                  });
                }),
            Text(
              "$texto",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

class rb extends StatefulWidget {
  final String imagem;
  const rb(this.imagem, {super.key});

  @override
  State<rb> createState() => _rbState();
}

class _rbState extends State<rb> {
  int op = 0;
  String texto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          "Questionário",
          style: TextStyle(fontSize: 20),
        ),
        Container(
          color: Colors.blue,
          width: 300,
          height: 200,
          child: Image.asset(
            widget.imagem,
            fit: BoxFit.fill,
          ),
        ),
        Text("Quantos ossos existem no corpo humano?",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        RadioListTile<int>(
            title: Text("155"),
            value: 1,
            groupValue: op,
            onChanged: (value) {
              setState(() {
                op = 1;
                texto = "Resposta errada, tente novamente!";
              });
            }),
        RadioListTile<int>(
            title: Text("202"),
            value: 2,
            groupValue: op,
            onChanged: (value) {
              setState(() {
                op = 2;
                texto = "Resposta errada, tente novamente!";
              });
            }),
        RadioListTile<int>(
            title: Text("206"),
            value: 3,
            groupValue: op,
            onChanged: (value) {
              setState(() {
                op = 3;
                texto =
                    "Certa a resposta, o corpo humano possui 206 ossos quando adulto!!!";
              });
            }),
        Text(
          "$texto",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}

class econ extends StatefulWidget {
  final String imagem;
  const econ(this.imagem, {super.key});

  @override
  State<econ> createState() => _econState();
}

class _econState extends State<econ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Center(
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              color: Colors.brown,
              height: 270,
              width: 320,
            ),
            Container(
              color: Colors.green,
              height: 250,
              width: 300,
              child: Image.asset(
                widget.imagem,
                fit: BoxFit.fill,
              ),
            )
          ]),
        ),
        Container(
            width: 320,
            height: 250,
            child: Text(
              "O Brasil atualmente é a nona maior economia do mundo, possuindo um PIB de 2,17 trilhões doláres, mas mesmo assim não podemos nos orgulhar tanto, pois temos países bem menores na nossa frente, tanto em população, quanto em dimensão, como Itália, França, Reino Unido, Japão e Alemanha.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.lime,
                  Colors.green,
                ])))
      ]),
    ));
  }
}
