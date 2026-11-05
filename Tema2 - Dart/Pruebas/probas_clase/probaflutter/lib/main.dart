import 'package:flutter/material.dart';

final tema =ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 91, 219, 211))
);
void main () {
  runApp(MyAplicacion());
}

class MyAplicacion extends StatelessWidget {
  const MyAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "App de exemplo - 2º DAM", home: PantallaPrincipal(),debugShowCheckedModeBanner: false, theme: tema,);
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    var alumnos = ["Xurxo", "Anxo", "Xoel", "Iago", "Sergio","Iria"];
    return Scaffold(
      body: Column(
        children: [
          Text('Texto 1 =====================',style: tema.textTheme.titleLarge,),
          SizedBox(
            height: 16,
          ),
          FilledButton(
            onPressed: () => print('Boton pulsado'),
            child: Text('Texto 1'),
          ),
          Text('Texto 2 ======================'),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () => print('Boton pulsado'),
            child: Text('Texto 2'),
          ),
        ],
      ),
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


