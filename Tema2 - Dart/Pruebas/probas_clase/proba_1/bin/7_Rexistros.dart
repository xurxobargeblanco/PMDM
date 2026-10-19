// 7 Rexistros

void main(){
  // 7.1 Campos posicionais

  (String,int) alumno = ('Xurxo',20);

  print(alumno.$1);
  print(alumno.$2);

  // 7.2 Campos nomeados

  final alumno0 = (nome : 'Xurxo', idade: 20);

  print(alumno0.nome);
  print(alumno0.idade);

  // 7.3 Substituír un rexistro

  var alumno1 = (nome : 'Xurxo', idade: 20);

  alumno1 = (nome : 'Jorge', idade : 25);

  print(alumno1);

  // 7.4 Comparar rexistros

  var r1 = ('Diego', 20);
  var r2 = ('Diego', 20);

  print(r1 == r2);

  // 7.5 Lista de rexistros

  List<(String, int)> usuarios = [
    ('Diego', 20),
    ('Rosa', 25),
    ('Marcos', 30),
  ];

  for (var usuario in usuarios) {
    print(usuario);
  }

  // 7.6 Un rexistro dentro doutro

  var enderezo = (rua: 'Rúa Maior 5', cidade: 'Ourense');

  var usuario = (nome: 'Diego', idade: 20, enderezo: enderezo);

  print(usuario);




}