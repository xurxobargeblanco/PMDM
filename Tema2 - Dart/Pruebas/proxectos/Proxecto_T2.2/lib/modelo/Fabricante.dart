// 

class Fabricante {
  final String nome;
  final String pais;

  const Fabricante({required this.nome, this.pais = 'España'});

  @override
  String toString() => '$nome ($pais)';
}



