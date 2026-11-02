import 'package:proxecto_t2/modelo/Peza.dart';

class Actuador extends Peza {
  final int presionMaxBar;

  Actuador({
    required super.codigo,
    required super.fabricante,
    required super.familia,
    required super.spec,
    required super.stock,
    required this.presionMaxBar,
  });

  @override
  String obterDetallesEspecificos() => 'Presión máxima: $presionMaxBar bar';
}