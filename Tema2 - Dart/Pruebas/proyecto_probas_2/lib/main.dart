import 'package:flutter/material.dart';

void main () {
  runApp(MyAplicacion());
}

class MyAplicacion extends StatelessWidget {
  const MyAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Practica con Imaxe", home: PantallaPrincipal(),debugShowCheckedModeBanner: false,);
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        AMinaImaxeLocal()
    );
  }
}

class AMinaImaxeLocal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/img/Diagrama_Entidad-Relación.png"
    );
  }
}