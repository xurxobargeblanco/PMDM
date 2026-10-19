// 5. Coleccións básicas e percorridos

void main(){

  // 5.1 Modificar unha lista final

  final cores = ['vermello', 'azul', 'verde'];

  // cores = ['amarelo','negro']; -> Como e final non se lle pode asignar outros valores

  cores.add('branco'); // -> si que se pode añadir mais elementos a lista

  print(cores);

  // 5.2 Substituír nunha lista 

  List<int> valor = [1,2,3]; // - dynamic valor = [1, 2, 3];

  print(valor.first + valor.last);

  // 5.3 Modifica un mapa final

  final usuario = {'nome' : 'Diego'};

  usuario['nome'] = 'Rosa';

  print(usuario);

  // 5.4 Primeiro e último elemento

  final nomes = ['Manuel','Milagros','Sofía'];

  print("${nomes[0]} ${nomes[2]}");


  // 5.6 Cambiar e eliminar posicións

  final cores2 = ['vermello','verde','azul'];

  cores2[1] = 'amarelo';

  cores2.removeAt(0);

  print(cores2);
  
  // 5.7 Tamaño e lista baleira

  final lista = [1,2,3];

  print("Tamaño de lista ${lista.length} , esta baleira ? ${lista.isEmpty ? 'si' : 'no'}");

  lista.clear();

  print("Tamaño de lista ${lista.length} , esta baleira ? ${lista.isEmpty ? 'si' : 'no'}");

  // 5.8 Buscar nunha lista

  List<String> froitas = ['mazá', 'pera', 'mazá', 'kiwi'];

  int indice = froitas.indexOf('mazá');
  bool tenBanana = froitas.contains('banana');

  print(indice);     
  print(tenBanana);  

  // 5.10 Accede a unha matriz 

  List<List<int>> matriz = [
    [1,2],
    [3,4],
    [5,6]
  ];

  print(matriz[2][1]);

  // 5.18 Suma só os enteiros

  List<Object> n = [1, 'Diego', 3];

  int suma = 0;

  for (Object elemento in n) {
    if (elemento is int) {
      // ignore: unnecessary_cast
      suma += elemento as int;
    }
  }

  print(suma); 
  
  // 5.19 Asistencia e ausencias



}