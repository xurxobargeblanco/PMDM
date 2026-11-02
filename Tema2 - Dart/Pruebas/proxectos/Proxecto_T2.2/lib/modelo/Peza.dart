import 'package:proxecto_t2/modelo/fabricante.dart';
import 'package:proxecto_t2/modelo/familia_peza.dart';

abstract class Peza {
  final String codigo;
  final Fabricante fabricante;
  final FamiliaPeza familia;
  final String spec;
  int _stock; // Atributo privado para controlar con setter

  Peza({
    required this.codigo,
    required this.fabricante,
    required this.familia,
    required this.spec,
    required this._stock,
  });

  // Getter para o stock
  int get stock => _stock;

  // Setter con validación para impedir stock negativo
  set stock(int novoStock) {
    if (novoStock < 0) {
      throw ArgumentError('O stock non pode ser negativo.');
    }
    _stock = novoStock;
  }

  // Método abstracto (polimorfismo)
  String obterDetallesEspecificos();

  @override
  String toString() => '$codigo | ${fabricante.nome} | ${familia.name} | $spec | Stock: $_stock';
}
