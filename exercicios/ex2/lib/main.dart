

import 'package:flutter/material.dart';

void main() {
  runApp(const Nav());
}

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigatorScreen(),
    );
  }
}

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int selectIndex = 0;


  static const TextStyle optionStyle =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold); 
  static const List<Widget> _widgetOptions = <Widget>[
    econ("img/download.jpg"),
    Text(
      'Index 1: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];
  // função que muda o index conforme o icone é pressionado
  void showItemTrap(int index){
    setState(() {
      selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App de comidas típicas"),
      ),

      body: Center(
        child: _widgetOptions.elementAt(selectIndex),
      ),

     bottomNavigationBar: BottomNavigationBar(
          // itens é cada item do navigation bar
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image(
                image: ResizeImage(
                AssetImage("img/download.jpg"),
                width: 30, // Defina a largura desejada
                height: 30, // Defina a altura desejada
              ),),

              label: 'Itália',
              
              
              backgroundColor: Colors.green
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
