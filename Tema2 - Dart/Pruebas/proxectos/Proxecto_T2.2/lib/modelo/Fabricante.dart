class Fabricante {
  final nome;
  final pais;

  Fabricante({required this.nome, this.pais = 'Desconocido'});

  
  @override
  String toString() => '$nome ($pais)';
}



