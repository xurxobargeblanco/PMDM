import '../modelo/peza.dart';
import '../modelo/repositorio_pezas.dart';
import 'lector.dart';

class Menu {
  final RepositorioPezas repositorio;
  final Lector _lector = Lector(); // Instancia do lector

  Menu({required this.repositorio});

  void iniciar() {
    var executando = true;
    while (executando) {
      _amosarOpcions();
      final opcion = _lector.pedir('Selecciona unha opción: ');

      switch (opcion) {
        case '1':
          repositorio.cargarDatosExemplo();
          print('Datos de exemplo cargados.');
        case '2':
          _procesarEngadir();
        case '3':
          _procesarListar();
        case '4':
          _procesarBuscar();
        case '5':
          _procesarEliminar();
        case '0':
          print('Saíndo da aplicación...');
          executando = false;
        default:
          print('Opción non válida.');
      }
    }
  }

  void _amosarOpcions() {
    print('''
=== XESTOR DE PEZAS INDUSTRIAIS (POO) ===
1. Cargar datos de exemplo
2. Engadir nova peza
3. Listar pezas (con pausas)
4. Buscar peza
5. Eliminar peza
0. Saír
''');
  }

  // LISTAXES CON PAUSAS (Obrigatorio na rúbrica)
  void _amosarConPausas(List<Peza> pezas) {
    if (pezas.isEmpty) {
      print('Non hai elementos para mostrar.');
      return;
    }

    for (int i = 0; i < pezas.length; i++) {
      print('[${i + 1}] ${pezas[i]} - ${pezas[i].obterDetallesEspecificos()}');

      // Pausa cada 5 elementos se quedan máis
      if ((i + 1) % 5 == 0 && i < pezas.length - 1) {
        _lector.pedir('-- Preme Intro para continuar con máis resultados --');
      }
    }
    print('Total amosados: ${pezas.length}\n');
  }

  void _procesarEngadir() {
    print('\n--- REXISTRO DE NOVA PEZA ---');
    final codigo = _lector.pedirCodigo('Código (ex: ACT-003): ');
    
    if (codigo.isEmpty || repositorio.buscarPorCodigo(codigo) != null) {
      print('Código baleiro ou xa existente.');
      return;
    }

    final nomeFab = _lector.pedir('Nome do fabricante: ');
    final spec = _lector.pedir('Especificacións técnicas: ');
    final stock = _lector.pedirEnteiro('Stock inicial: ');
    final presion = _lector.pedirEnteiro('Presión máxima (bar): ');

    final novaPeza = Actuador(
      codigo: codigo,
      fabricante: Fabricante(nome: nomeFab),
      familia: FamiliaPeza.actuadores,
      spec: spec,
      stock: stock,
      presionMaxBar: presion,
    );

    if (repositorio.engadirPeza(novaPeza)) {
      print('Peza engadida correctamente.');
    } else {
      print('Erro ao engadir a peza.');
    }
  }

  void _procesarListar() {
    print('\n--- LISTAXE DE PEZAS ---');
    _amosarConPausas(repositorio.pezas);
  }

  void _procesarBuscar() {
    final termo = _lector.pedir('Termo de busca (código, fabricante, familia...): ');
    final resultados = repositorio.buscar(termo);
    print('\n--- RESULTADOS DA BUSCA ---');
    _amosarConPausas(resultados);
  }

  void _procesarEliminar() {
    final codigo = _lector.pedirCodigo('Código da peza a eliminar: ');
    final peza = repositorio.buscarPorCodigo(codigo);
    
    if (peza == null) {
      print('Non se atopou ningunha peza con ese código.');
      return;
    }

    print('Atopada: $peza');
    final conf = _lector.pedir('Confirmas a eliminación? (s/N): ');
    
    if (conf.toLowerCase() == 's') {
      repositorio.eliminarPeza(codigo);
      print('Peza eliminada con éxito.');
    } else {
      print('Operación cancelada.');
    }
  }
}