void main(){
  
  // Nulos e comprobación de tipos

  // 3.1 Comprobar o tipo dun dato

  Object caixa = 5;

  if (caixa is int){
    print(caixa.isEven);
  }else{
    print("Non e un enteiro");
  }

  // Cambiamos o 5 por 'Diego'

  caixa = 'Diego';

  if (caixa is int) {
    print(caixa.isEven);
  } else {
    print('Non é un enteiro'); 
  }

  // 3.2 Correxir nulos e constatntes

  // int idade = null;

  int? idade = null;

  if (idade != null) {
    print(idade.isEven);
  }else{
    print('Idade desconocida');
  }

  // const data = DateTime.now();

  final data = DateTime.now();

  print(data);

  // 3.3 Comparar is e as

  Object numero = 42;

  // Metodo as

  print((numero as int).isEven);

  // Metodo is

  if (numero is int) {
    print(numero.isEven); // true
  } else {
    print('Non é un enteiro');
  }

  // 3.4 Un alcume por defecto

  String? alcume;

  print((alcume ?? 'Descoñecido').toLowerCase());

  // 3.5 Un teléfono anulable

  final int id = 1;
  String nome = 'Diego Rodicio';
  String? telefono; 

  print('Id: $id');
  print('Nome: $nome');
  print('Teléfono: ${telefono ?? 'Sen teléfono'}');

  // 3.6 Consulta a lonxitude coa seguridade

  String? s = null;

  print(s?.length ?? 0);

  // 3.7 Comprobar e converter tipos

  Object valor = 'Diego';

  if(valor is String){
    print('E un String de ${valor.length} letras');
  }

  if(valor is! int){
    print('Non é un enteiro');
  }

  String texto = valor as String;

  print(texto.toUpperCase());

  // 3.8 Asignar só se falta un valor

  int? idade2 = null;

  idade2 ??= 2;

  print(idade2);
  
}