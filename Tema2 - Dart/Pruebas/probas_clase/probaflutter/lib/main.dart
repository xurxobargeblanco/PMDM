import 'package:flutter/material.dart';

void main () {
  runApp(MyAplicacion());
}

class MyAplicacion extends StatelessWidget {
  const MyAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "App de exemplo - 2º DAM", home: PantallaPrincipal());
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar - Pantalla Principal",textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.fade,)
      ),
      body: Texto()
    );
  }
}

class Texto extends StatelessWidget {
  String texto = "";
  const new({
    required this.texto,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text('Body - Pantalla Principal',style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.blueAccent,
      backgroundColor: Colors.white60,
      letterSpacing: 5.0,
      height: 2.5
    ),);
  }
}


