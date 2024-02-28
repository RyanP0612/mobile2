import 'package:flutter/material.dart'; // Pacote para o sistema operacional android

// função principal
void main() {
  // Run app é a função que vai chamar a tela do aplicativo
  runApp( NavBottom()); // Material APP é a função necessária para chamar a classe criada
}
// Classe NavBottom do tipo stateless, pois não tem widgets dinamicos
class NavBottom extends StatelessWidget {
  const NavBottom({super.key}); // construtor
 
  @override
  Widget build(BuildContext context) {
    // Scaffold é o layout semipronto do aplicativo
    return MaterialApp(
      home:   // app bar é a barra do aplicativo
                
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
  int selectIndex =0;
  // TextStyle tipo de variavel para receber parametros de acordo com o tipo da fonte do texto
  static const TextStyle optionStyle = TextStyle(fontSize:30,fontWeight: FontWeight.bold);
  // Cria uma lista de widgets para utilizar no navigator bar
  static const List<Widget> _widgetOptions= <Widget> [
    TelaIndustria(),
    CheckBox(),
    rb(),
    Text('Index 3: Configurações',style:optionStyle),

  ];
  // Funçao que muda o index conforme o icone é pressionado
  void showItemTrap(int index){
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
        onTap:showItemTrap ,
    ));
  }
}

class TelaIndustria extends StatefulWidget {
  const TelaIndustria({super.key});

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
              Container(color: const Color.fromARGB(255, 0, 0, 0), width: 320, height: 320,),
              Container(color: Colors.amberAccent, width: 300, height: 300,
              child: Text("$msg", style: TextStyle(fontSize: 20),textAlign: TextAlign.left)),
              
            ],)
            
            

          ),
           
            ElevatedButton(onPressed: (){
            setState(() {
              msg = "Seja bem-vindo a empresa R&L Company";
            });
            

          }, child: Text("Bem-vindo")),
          ElevatedButton(onPressed: (){
            setState(() {
              msg = "   Desfrute dos irresistíveis sabores artesanais da R&L Company! Chocolates gourmet, bombons e balas que elevam o prazer à excelência. Descubra também nossa linha premium de suplementos de academia: proteínas em pó de alta qualidade e barras saborosas para impulsionar seus treinos.";
            });
            

          }, child: Text("Apresentação"))
          ]
          ),
          );
  }
         
}
        

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => CheckBoxState();
}

class CheckBoxState extends State<CheckBox> {
   // variavel para armazenar o valor do check box
   
   bool ischeck = false;
   bool ischeck2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Check Box 1"),
            Checkbox(
              // Value é o parametro do check box
              // ischeck variavel booleana que recebe o parametro value do check box
            value:  ischeck, 
            onChanged:(bool? value){
              setState(() {
                ischeck = value!; //inverte o estado como uma porta not
                
              });
            }
          
             ),
              Text("Status do checkbox $ischeck"),
               Text("Check Box 2"),
            Checkbox(
              // Value é o parametro do check box
              // ischeck variavel booleana que recebe o parametro value do check box
            value:  ischeck2, 
            onChanged:(bool? value2){
              setState(() {
                ischeck2 = value2!; //inverte o estado como uma porta not
                
              });
            }
            
            
            
             ),
              Text("Status do checkbox 2 $ischeck2"),
          ],
        ),
      ),
    );
  }
}


class rb extends StatefulWidget {
  const rb({super.key});

  @override
  State<rb> createState() => _rbState();
}

class _rbState extends State<rb> {
  int op = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Radio buttom", style: TextStyle(fontSize: 20),),

          RadioListTile<int>(
            title: Text("Opção 1"),
            value: 1,
            groupValue: op,
            onChanged: (value){
              setState(() {
                op=1;
              });
            }),
            RadioListTile<int>(
            title: Text("Opção 2"),
            value: 2,
            groupValue: op,
            onChanged: (value){
              setState(() {
                op=2;
              });
            }),
            RadioListTile<int>(
            title: Text("Opção 3"),
            value: 3,
            groupValue: op,
            onChanged: (value){
              setState(() {
                op=3;
              });
            }),

        ]),
    );
  }
}