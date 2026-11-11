import 'package:proxecto_t2/modelo/peza.dart';

class Sensor extends Peza{
  final String sinal;

  Sensor({
    required super.codigo,
    required super.fabricante,
    required super.familia,
    required super.spec,
    required super.stock,
    required this.sinal,
  });

  @override
  String obterDetallesEspecificos() => 'Tipo de sinal: $sinal';
}