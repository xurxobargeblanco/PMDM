
void main() {
// 2.1 Comentar unha variable :
// - Unha variable e onde se almacenan datos de diferentes tipos dentro do programa.

// 2.2 Tipos deducidos con var:

var nome1 = 'Xurxo';
var idade1 = 22;
print(nome1);
print(idade1);

// nome = 25; => A variable esta inicialiada como un String polo tanto non deixa reasignar un dato int.
// idade = 'Xurxo? => A varible non acepta a reasignación como no anterior caso.

// 2.3 Substituír var por tipos:

double saldo1 = 25.0;
bool estarActivo1 = true;
Object datoxenerico1 = 'Xurxo';
print(saldo1);
print(estarActivo1);
print(datoxenerico1);


datoxenerico1 = 25; // Deixa reasignar xa que object e o pai dos demais tipos de variables.

// 2.4 Substituír var por tipos:

String nome2 = 'Iria';
int idade2 = 19;
double nota1 = 7.5;
bool activo1 = true;
print(nome2);
print(idade2);
print(nota1);
print(activo1);


// 2.5 Final e const:

const pi = 3.14159;
final horaActual1 = DateTime.now();
print(pi);
print(horaActual1);

// const dataActual1 = DateTime.now(); => DateTime.now() non acepta const no construcctor.

// 2.6 Interpolar un nome de usuario:

String a1 = 'Diego Rodicio';
String a2 = 'drodicio';
print(' $a1 ($a2)');

// 2.7 Cambiar de tipo con dynamic

dynamic datoAleatorio = 25;
datoAleatorio = 'Xurxo';
print(datoAleatorio);
datoAleatorio = true;


// 2.8 Converter antes de sumar 

var x; 
x = 10; 
int resultado = x + 5;
print(resultado);

// 2.9 Interpolar expresións

String b1 = 'Xurxo';
String b2 = 'Barge';

print(' $b1 $b2');

// 2.10 Converter texto a números

String c1 = '25';
String c2 = '25.0';

int.parse(c1);
double.parse(c2);

print('$c1 $c2');

// 2.11 Dar formato a un número

int c3 = 25;
double c4 = 25.0;

c3.toString();
c4.toString();

print('$c3 $c4');

// 2.12 Texto de varias liñas

print('''
Linea 1
Linea 2
Linea 3
ect...
''');



}
