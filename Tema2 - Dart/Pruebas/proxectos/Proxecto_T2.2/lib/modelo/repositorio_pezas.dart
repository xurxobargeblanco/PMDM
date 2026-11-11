
import 'package:proxecto_t2/modelo/fabricante.dart';
import 'package:proxecto_t2/modelo/familia_peza.dart';

import 'peza.dart';
import 'actuador.dart';
import 'sensor.dart';

class RepositorioPezas {
  final List<Peza> _pezas = [];

  List<Peza> get pezas => _pezas;

  bool get isEmpty => _pezas.isEmpty;

  // Cargar datos iniciais de exemplo
  void cargarDatosExemplo() {
    if (_pezas.isNotEmpty) return;

    final ejemplo1 = Actuador(
          codigo: 'ACT-001',
          fabricante: Fabricante(nome: 'Festo', pais: 'Alemaña'),
          familia: FamiliaPeza.actuadores,
          spec: 'Cilindro ISO 15552, 40 mm',
          stock: 12,
          presionMaxBar: 10,
        );
    final ejemplo2 = Sensor(
          codigo: 'SEN-301',
          fabricante: Fabricante(nome: 'Siemens', pais: 'Alemaña'),
          familia: FamiliaPeza.sensores,
          spec: 'NPN, 24VDC, NO, M12',
          stock: 30,
          sinal: 'NPN',
        );

      _pezas.add(ejemplo1);
      _pezas.add(ejemplo2);
  }

  // Engadir peza comprobando que non exista o código
  bool engadirPeza(Peza peza) {
    if (_pezas.any((p) => p.codigo == peza.codigo)) {
      return false;
    }
    _pezas.add(peza);
    return true;
  }

  // Eliminar peza
  bool eliminarPeza(String codigo) {
    final index = _pezas.indexWhere((p) => p.codigo == codigo);
    if (index != -1) {
      _pezas.removeAt(index);
      return true;
    }
    return false;
  }

  // Buscar peza por código exacto
  Peza? buscarPorCodigo(String codigo) {
    try {
      return _pezas.firstWhere((p) => p.codigo == codigo);
    } catch (_) {
      return null;
    }
  }

  // Busca parcial en varios campos 
  List<Peza> buscar(String termo) {
    final t = termo.toLowerCase();
    return _pezas.where((p) =>
      p.codigo.toLowerCase().contains(t) ||
      p.fabricante.nome.toLowerCase().contains(t) ||
      p.familia.name.toLowerCase().contains(t) ||
      p.spec.toLowerCase().contains(t)
    ).toList();
  }

  // CALLBACK PROPIO: Método que recibe unha función de condición como argumento
  List<Peza> filtrarPersonalizado(bool Function(Peza p) criterio) {
    return _pezas.where(criterio).toList();
  }
}