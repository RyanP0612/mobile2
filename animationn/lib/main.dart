import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(AnimationContainerApp());
}

class AnimationContainerApp extends StatefulWidget {
  double height = 50.0;
  double width = 50.0;
  Color color = Colors.blueGrey;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(8);

  @override
  State<AnimationContainerApp> createState() => _AnimationContainerAppState();
}

class _AnimationContainerAppState extends State<AnimationContainerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App animação siuuuu"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
              child: AnimatedContainer(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: widget.borderRadius,
                ),
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
              ),
            ),
            FloatingActionButton(onPressed: (){
              setState(() {
                final random = Random();
                widget.height = random.nextInt(300).toDouble(); //valor random com um máximo de 300
                widget.width = random.nextInt(300).toDouble();
                widget.color = Color.fromARGB(
                  random.nextInt(255), random.nextInt(256), random.nextInt(255), 1);
                widget.borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

              });
            }, child: Icon(Icons.play_arrow_outlined),),
            Snack_bar()
          ]
        ),
        ),
    );
  }
}

class Snack_bar extends StatelessWidget {
  const Snack_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(              
              label: 'Undo',              
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('SnackBala'),
      );
    
  }
}
        