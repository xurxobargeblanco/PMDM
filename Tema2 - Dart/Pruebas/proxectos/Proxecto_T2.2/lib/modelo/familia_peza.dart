// Enum en vez de String: solo admite as familias declaradas
// e cada familia leva datos propios: a etiqueta que ve o usuario
// e se é eléctrica, o que decidirá que subclase de Peza se crea.

enum FamiliaPeza {

  actuadores(etiqueta: 'Actuadores', esElectrica: false),
  protecciones(etiqueta: 'Protección', esElectrica: true), 
  neumatica(etiqueta: 'Neumática', esElectrica: false),
  sensores(etiqueta: 'Sensores', esElectrica: true),
  motores(etiqueta: 'Motores', esElectrica: true),
  valvulas(etiqueta: 'Válvulas', esElectrica: false);

  final String etiqueta;
  final bool esElectrica;

  const FamiliaPeza({required this.etiqueta,required this.esElectrica});
}