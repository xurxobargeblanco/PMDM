import 'package:proxecto_t2/modelo/Peza.dart';
import 'package:proxecto_t2/vistas/menu.dart';

class Almacen {
  final Map<String,Peza> _pezas = {};
  final menu = Menu();

  void engadir(Peza peza){
    final codigo = menu.pedirCodigo('Introduce o código da pieza');

    if (codigo.isEmpty) {
      print('O código é obrigatorio.');
      return;
    }
    if (_pezas.containsKey(codigo)) {
        print('Ese código xa existe no sistema.');
        return;
    }

      _pezas[codigo] = peza;

      print('Peza $codigo engadida correctamente');
  }

  bool eliminar(String codigo){
    final peza = _pezas[codigo];

    if(peza == null){
      print('A peza con codigo $codigo non existe no almacen');
    }

    final confirmar = menu.pedir('Desea eliminar a peza $codigo ? (S/N)');

    return false;
  }

}