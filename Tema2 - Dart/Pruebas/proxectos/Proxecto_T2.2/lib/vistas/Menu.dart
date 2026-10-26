import 'dart:io';

class Menu {

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

  void mostrarMenu(){
    print('''
    === XESTOR DE PEZAS ===
    1. Cargar datos de exemplo
    2. Engadir peza
    3. Modificar peza
    4. Eliminar peza
    5. Listar todas as pezas
    6. Buscar peza
    7. Listar por familia
    0. Saír
    ''');
  }
  
}