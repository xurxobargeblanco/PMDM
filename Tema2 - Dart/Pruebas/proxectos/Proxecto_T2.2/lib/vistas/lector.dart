import 'dart:io';

/// A clase Lector encárgase exclusivamente de xestionar a entrada de datos 
/// pola terminal (stdin) e aplicar as primeiras validacións básicas de formato 
/// e tipo de datos, liberando ao Menú desta responsabilidade.

class Lector {

  /// Mostra unha mensaxe por pantalla sen salto de liña e recolle 
  /// o texto introducido pola persoa usuaria, limpando os espazos en branco.

  String pedir(String mensaxe) {
    stdout.write(mensaxe);
    return (stdin.readLineSync() ?? '').trim();
  }

  /// Pide un texto pola terminal e convérteo automaticamente a maiúsculas,
  /// para códigos de pezas (ex: ACT-001).
  
  String pedirCodigo(String mensaxe) {
    return pedir(mensaxe).toUpperCase();
  }

  /// Pide un número enteiro mediante un bucle de validación 'while' 
  /// que se repite ata que o usuario introduce un valor numérico válido 
  /// maior ou igual ao mínimo.

  int pedirEnteiro(String mensaxe, {int minimo = 0}) {
    while (true) {
      final texto = pedir(mensaxe);
      final numero = int.tryParse(texto);

      if (numero != null && numero >= minimo) {
        return numero;
      }

      print('Introduce un número válido maior ou igual a $minimo.');
    }
  }
}