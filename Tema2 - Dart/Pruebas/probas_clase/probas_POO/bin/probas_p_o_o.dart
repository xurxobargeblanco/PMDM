
// Miercoles 14 octubre 2026

class RectanguloI{
  double _altura;
  final double _lado;

  RectanguloI(this._altura,this._lado);

  double get area {
    return _lado * _altura;
  }

  set altura(double novaAltura) {
    if(novaAltura <= 0){
      throw ArgumentError("A lonxitude debe ser positiva");
    }
    _altura = novaAltura;
  }
  
  double get altura => _altura;

  double alturaDoble(){
    return alturaD(_altura);
  }

  static double alturaD(double altura){
    return (altura * 2);
  }
}

//x-----x-----x-----x-----x-----x-----x-----x-----x-----x-----x-----x-----x-----x-----x

// Jueves 15 octubre 2026

class Persoa{
  String nome;

  Persoa({required this.nome});

  @override
  String toString(){
    return "Persona - Nome : $nome";
  }

  void presentarse(){
    print("Hola son $nome");
  }

  static bool esSerVivo(){
    return true;
  }

}

class Profesor extends Persoa{
  String centroEducativo;

  Profesor({required super.nome,this.centroEducativo = "Sen centro"});

  @override
  void presentarse(){
    print("Hola son $nome e imparto clases no $centroEducativo");
  }

}

class Curso {
  String grupo;

  //Profesor tutor;
  //List<Profesor> profesorado;

  void Function() aoComenzar;

  Curso({required this.grupo, required this.aoComenzar});

  comezar(){
    print("Hola, grupo $grupo");
    aoComenzar();
  }
  
}

void avisar(){
  print("Benvidos a PMDM, 2º DAM");
}

void main() {

  var xurxo = Persoa(nome: 'Xurxo');
  print(xurxo.nome);

  xurxo.presentarse();

  var toni = Profesor(nome: 'Toni',centroEducativo: "Ies San Mamede");
  print(toni.centroEducativo);

  toni.presentarse();

  print(Persoa.esSerVivo());

  var dam = Curso(grupo: "A", aoComenzar: avisar);

  print("${dam.comezar()} de ${dam.grupo}");

  dam.comezar();
  
}
