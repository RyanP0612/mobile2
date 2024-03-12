import 'package:flutter/material.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, height: 300, color: Colors.amber, child: Image.asset("assets/a.jpg", fit: BoxFit.fill,),
    );
  }
}