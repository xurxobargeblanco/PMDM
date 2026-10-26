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
        title: Text("App Bar - Pantalla Principal")
      ),
      body: MiColumna()
    );
  }
}

class MiColumna extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Body do Scaffold -- "),
        Text("! ola ¡"),
        Text("! ola ¡")

      ],
    );
  }
}

