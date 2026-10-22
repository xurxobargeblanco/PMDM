// ============================================================
// Proxecto: Xestor de Pezas Industriais (PMDM)
// Autor: Xurxo Barge Blanco
// Execución: dart run main.dart
// ============================================================

import 'dart:io';

// --- ESTRUTURAS E DATOS ---

typedef Peza = ({String fabricante, String familia, String spec, int stock});

// Mapa principal: clave = código de peza
final almacen = <String, Peza>{};

// --- ENTRADAS POLO TECLADO ---

String pedir(String mensaxe) {
  stdout.write(mensaxe);
  try {
    return (stdin.readLineSync() ?? '').trim();
  } on StdinException {
    return '';
  }
}

String pedirCodigo(String mensaxe) => pedir(mensaxe).toUpperCase();

String pedirObrigatorio(String mensaxe) {
  while (true) {
    final texto = pedir(mensaxe);
    if (texto.isNotEmpty) return texto;
    print('Este campo non pode estar baleiro.');
  }
}

int pedirEnteiro(String mensaxe, {int minimo = 0, int? valorActual}) {
  while (true) {
    final texto = pedir(mensaxe);

    if (texto.isEmpty && valorActual != null) return valorActual;

    final numero = int.tryParse(texto);
    if (numero != null && numero >= minimo) return numero;

    print('Valor non válido. Debe ser un número >= $minimo.');
  }
}

// --- FORMATO DE SAÍDA ---

String formatarPeza(String codigo, Peza peza) =>
    '$codigo | ${peza.fabricante} | ${peza.familia} | ${peza.spec} | Stock: ${peza.stock}';

void mostrarMenu() {
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

// --- FUNCIÓNS DO ALMACÉN ---

// Enche o mapa con algúns datos iniciais para probar a aplicación rapidamente.
void cargarDatos() {
  almacen.addAll({
    'ACT-001': (fabricante: 'Festo', familia: 'Actuadores', spec: 'Cilindro ISO 15552, 40 mm, 10 bar', stock: 12),
    'ACT-002': (fabricante: 'SMC', familia: 'Actuadores', spec: 'Cilindro compacto, 32 mm, 10 bar', stock: 8),
    'PRO-101': (fabricante: 'Schneider Electric', familia: 'Protección', spec: 'Magnetotérmico, 16 A, curva C', stock: 40),
    'PRO-102': (fabricante: 'ABB', familia: 'Protección', spec: 'Diferencial, 25 A, 30 mA', stock: 15),
    'NEU-201': (fabricante: 'Festo', familia: 'Neumática', spec: 'Válvula 5/2, 24VDC, G1/4', stock: 20),
    'NEU-202': (fabricante: 'Parker', familia: 'Neumática', spec: 'Válvula 3/2, 24VDC, NC, G1/8', stock: 0),
    'SEN-301': (fabricante: 'Siemens', familia: 'Sensores', spec: 'NPN, 24VDC, NO, M12', stock: 30),
    'SEN-302': (fabricante: 'Omron', familia: 'Sensores', spec: 'PNP, 24VDC, NC, M12', stock: 25),
    'VAL-401': (fabricante: 'Bosch Rexroth', familia: 'Válvulas', spec: 'Proporcional, 24VDC, G1/2', stock: 5),
    'MOT-501': (fabricante: 'WEG', familia: 'Motores', spec: 'Trifásico, 0,75 kW, 400V, 1500 rpm', stock: 3),
  });
  print('Cargáronse ${almacen.length} pezas de proba.');
}

// Pide os datos necesarios pola terminal e rexistra unha nova peza no almacén.
void engadirPeza() {
  final codigo = pedirCodigo('Código da peza: ');

  if (codigo.isEmpty) {
    print('O código é obrigatorio.');
    return;
  }
  if (almacen.containsKey(codigo)) {
    print('Ese código xa existe no sistema.');
    return;
  }

  final fabricante = pedirObrigatorio('Fabricante: ');
  final familia = pedirObrigatorio('Familia: ');
  final spec = pedirObrigatorio('Especificacións: ');
  final stock = pedirEnteiro('Stock inicial: ');

  almacen[codigo] = (
    fabricante: fabricante,
    familia: familia,
    spec: spec,
    stock: stock,
  );
  print('Peza $codigo gardada correctamente.');
}

// Edita os campos dunha peza existente, permitindo manter o valor actual con Enter.
void modificarPeza(String codigo) {
  final peza = almacen[codigo];

  if (peza == null) {
    print('Non se atopou ningunha peza co código $codigo');
    return;
  }

  print('Preme Enter sen escribir nada para manter o valor actual.');

  final fabricante = pedir('Fabricante [${peza.fabricante}]: ');
  final familia = pedir('Familia [${peza.familia}]: ');
  final spec = pedir('Especificacións [${peza.spec}]: ');
  final stock = pedirEnteiro('Stock [${peza.stock}]: ', valorActual: peza.stock);

  almacen[codigo] = (
    fabricante: fabricante.isEmpty ? peza.fabricante : fabricante,
    familia: familia.isEmpty ? peza.familia : familia,
    spec: spec.isEmpty ? peza.spec : spec,
    stock: stock,
  );
  print('Peza actualizada: ${formatarPeza(codigo, almacen[codigo]!)}');
}

// Pide confirmación e borra a peza do mapa se o usuario acepta.
void eliminarPeza(String codigo) {
  final peza = almacen[codigo];

  if (peza == null) {
    print('Non se atopou a peza $codigo.');
    return;
  }

  print(formatarPeza(codigo, peza));
  final confirmacion = pedir('Confirmas a eliminación? (s/N): ');

  if (confirmacion.toLowerCase() == 's') {
    almacen.remove(codigo);
    print('Peza eliminada.');
  } else {
    print('Operación cancelada.');
  }
}

// Mostra o listado de pezas ordenadas por código, permitindo filtrar opcionalmente por familia.
void listar({String? familia, bool ordenar = true}) {
  var entradas = almacen.entries.toList();

  if (familia != null) {
    final f = familia.toLowerCase();
    entradas = entradas.where((e) => e.value.familia.toLowerCase() == f).toList();
  }

  if (entradas.isEmpty) {
    print('Non hai pezas rexistradas.');
    return;
  }

  if (ordenar) {
    entradas.sort((a, b) => a.key.compareTo(b.key));
  }

  for (final entrada in entradas) {
    print(formatarPeza(entrada.key, entrada.value));
  }
  print('Total: ${entradas.length} pezas.');
}

// Xera a función de filtrado para comprobar se o termino aparece en calquera campo da peza.
bool Function(MapEntry<String, Peza>) crearFiltro(String termo) {
  final t = termo.toLowerCase();

  return (entrada) {
    final peza = entrada.value;
    return entrada.key.toLowerCase().contains(t) ||
        peza.fabricante.toLowerCase().contains(t) ||
        peza.familia.toLowerCase().contains(t) ||
        peza.spec.toLowerCase().contains(t);
  };
}

// Busca pezas que conteñan o termo introducido e imprime os resultados por pantalla.
void buscarPezas(String termo) {
  if (termo.isEmpty) {
    print('Debes indicar un termo de busca.');
    return;
  }

  final resultados = almacen.entries.where(crearFiltro(termo)).toList();

  if (resultados.isEmpty) {
    print('Sen resultados para "$termo".');
    return;
  }

  for (final entrada in resultados) {
    print(formatarPeza(entrada.key, entrada.value));
  }
  print('Coincidencias atopadas: ${resultados.length}');
}

// --- MAIN ---

void main() {
  var executando = true;

  while (executando) {
    mostrarMenu();
    final opcion = pedir('Selecciona unha opción: ');

    switch (opcion) {
      case '1':
        cargarDatos();
      case '2':
        engadirPeza();
      case '3':
        modificarPeza(pedirCodigo('Código a modificar: '));
      case '4':
        eliminarPeza(pedirCodigo('Código a eliminar: '));
      case '5':
        listar();
      case '6':
        buscarPezas(pedir('Termo de busca: '));
      case '7':
        listar(familia: pedir('Familia: '));
      case '0':
        print('Saíndo...');
        executando = false;
      default:
        print('Opción non válida.');
    }
  }
}