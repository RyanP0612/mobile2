
import 'package:exercisetoo/itaFood.dart';
import 'package:flutter/material.dart';
import 'package:exercisetoo/espFood.dart';
import 'package:exercisetoo/canFood.dart';
import 'package:exercisetoo/finFood.dart';

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
    italia("assets/foodIta.jpg"),
    espanha("assets/foodEsp.jpg"),
    canada("assets/foodCan.jpg"),
    finlandia("assets/foodFin.jpg")
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
                AssetImage("assets/italia.png"),
                width: 30, // Defina a largura desejada
                height: 30, // Defina a altura desejada
              ),),

              label: 'Itália',
              
              
              backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: ResizeImage(
                AssetImage("assets/espanha.png"),
                width: 30, // Defina a largura desejada
                height: 30, // Defina a altura desejada
              ),),
              backgroundColor: Colors.orange,
              label: 'Espanha',
            ),
             BottomNavigationBarItem(
              icon: Image(
                image: ResizeImage(
                AssetImage("assets/canada.png"),
                width: 30, // Defina a largura desejada
                height: 30, // Defina a altura desejada
              ),),
              backgroundColor: Colors.red,

              label: 'Canadá',
            ),
             BottomNavigationBarItem(
              icon: Image(
                image: ResizeImage(
                AssetImage("assets/finlandia.png"),
                width: 30, // Defina a largura desejada
                height: 30, // Defina a altura desejada
              ),),
              backgroundColor: Colors.blue,

              label: 'Finlândia',
            ),
          ],
          currentIndex: selectIndex,
          selectedItemColor: Colors.white,
          onTap: showItemTrap,
        ));
  }
}




class italia extends StatefulWidget {
  final String imagem;
  const italia(this.imagem, {super.key});

  @override
  State<italia> createState() => _italiaState();
}

class _italiaState extends State<italia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Center(
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              color: Colors.black,
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
            height: 180,
            child: Text(
              "Aaa a Itália😋, um país extremamente conhecido pela sua incrível, deliciosa e rigída culinária, normalmente baseada em massas. Partindo disso, iremos demonstrar uma receita\nM-A-R-A-V-I-L-H-O-S-A deste incrível país gastrônomico.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.green
                ]))),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ItaReceita(),));
              }, child: Text("receitinha da vovo"))
      ]),
    ));
  }
}


void voltar(BuildContext context) {
  
  Navigator.pop(context);
}


class espanha extends StatefulWidget {
  final String imagem;
  const espanha(this.imagem, {super.key});

  @override
  State<espanha> createState() => _espanhaState();
}

class _espanhaState extends State<espanha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Center(
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              color: Colors.black,
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
            height: 220,
            child: Text(
              "A gastronomia espanhola, rica e vibrante, é um reflexo da própria cultura do país, marcada por influências diversas e uma paixão por ingredientes frescos e sazonais. Uma viagem à Espanha não se completa sem mergulhar nesse universo de sabores e aromas, explorando as especialidades regionais e as tradições culinárias que definem cada canto do país.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.red,
                  Colors.yellow,
                  Colors.red
                ]))),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EspReceita(),));
              }, child: Text("receitinha da vovo"))
      ]),
    ));
  }
}




class canada extends StatefulWidget {
  final String imagem;
  const canada(this.imagem, {super.key});

  @override
  State<canada> createState() => _canadaState();
}

class _canadaState extends State<canada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Center(
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              color: Colors.black,
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
            height: 235,
            child: Text(
              "A gastronomia canadense, frequentemente subestimada, é um universo de sabores e aromas que surpreende e conquista paladares. Influenciada por culturas indígenas, europeias e americanas, a culinária do país oferece uma experiência gastronômica única, marcada por ingredientes frescos, sazonais e de alta qualidade.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.red,
                  Colors.white,
                  Colors.red
                ]))),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CanReceita(),));
              }, child: Text("receitinha da vovo"))
      ]),
    ));
  }
}



class finlandia extends StatefulWidget {
  final String imagem;
  const finlandia(this.imagem, {super.key});

  @override
  State<finlandia> createState() => _finlandiaState();
}

class _finlandiaState extends State<finlandia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Center(
          child: Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              color: Colors.black,
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
            height: 235,
            child: Text(
              "A gastronomia finlandesa, caracterizada por sua simplicidade e frescor, é um reflexo da natureza exuberante do país. Os longos invernos e verões curtos moldaram a culinária local, que valoriza ingredientes sazonais e técnicas de preservação tradicionais. Embarque em uma jornada culinária pela Finlândia e descubra os sabores únicos que definem essa nação.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Colors.white,
                  Colors.blue,
                  Colors.white
                ]))),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FinReceita(),));
              }, child: Text("receitinha da vovo"))
      ]),
    ));
  }
}


