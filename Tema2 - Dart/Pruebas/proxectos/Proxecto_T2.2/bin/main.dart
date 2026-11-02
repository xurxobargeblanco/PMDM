import 'package:proxecto_t2/modelo/repositorio_pezas.dart';
import 'package:proxecto_t2/vistas/menu.dart';

void main() {
  final Repositorio = RepositorioPezas();
  final menu = Menu(repositorio: Repositorio);
  menu.iniciar();
}
