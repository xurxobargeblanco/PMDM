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
      body: Column(
        children: [
          Texto("LOCURAAAAA", corFondo: Colors.amberAccent),
          OMeuIcono(),
          AMinaImaxeLocal()
        ]
      )
    );
  }
}

class AMinaImaxeLocal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/img/imagen.png"
    );
  }
}

class OMeuIcono extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      size: 45.0,
      color: Colors.teal,
      semanticLabel: "Icona fav",
    );
  }
}

class Texto extends StatelessWidget {
  final Color corFondo;
  final String texto;
  const new(this.texto,{
    required this.corFondo,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(texto,style: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.blueAccent,
      backgroundColor: corFondo,
      letterSpacing: 5.0,
      height: 2.5
    ),);
  }
}


