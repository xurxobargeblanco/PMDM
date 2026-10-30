import 'dart:io';


class Lector {
  String pedir(String mensaxe){
    stdout.write(mensaxe);
    return (stdin.readLineSync() ?? '').trim();
  }

  String pedirCodigo(String mensaxe){
    return pedir(mensaxe).toUpperCase();
  }

  int pedirEnteiro(String mensaxe){
    while(true) {
      final texto = pedir(mensaxe);
      final numero = int.tryParse(texto);

      if(numero != null && numero >= 0){
        return numero;
      }

      print('Introduce un número válido maior ou igual a 0.');
    }
  }
}