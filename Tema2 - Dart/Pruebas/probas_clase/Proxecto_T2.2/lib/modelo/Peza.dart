

import 'package:proxecto_t2/modelo/Fabricante.dart';

class Peza{
  final String codigo;
  FabricantePeza fabricantePeza;
  String familia;
  String spec;
  int stock;

  Peza({
    required this.codigo,
    required this.fabricantePeza,
    required this.familia,
    required this.spec,
    required this.stock,
  });

  @override
  String toString(){
    return '$codigo | $fabricantePeza | $familia | $spec | Stock : $stock';
  }

}