// 4. Operadores e condicións


void main(){
  // 4.1 Área dun rectángulo

  int alto = 12;
  int ancho = 5;
  int area = alto*ancho; 
  print(area);

  // 4.2 Incrementar e decrementar

  int contador2 = 0, contador = 10;

  do {
    contador--;
    print(contador);
  } while (contador > 5);

  do {
    contador2++;
    print(contador2);
  } while (contador2 < 5);

  // 4.3 Comparar dous números

  int num1 = 2, num2 = -2;

  if (num1 == num2) {
    print('Son iguais');
  } else if (num1 > num2) {
    print('$num1 é maior que $num2');
  } else {
    print('$num1 é menor que $num2');
  }

  // 4.4 Combinar condicións

  bool tenEntrada = true;
  bool eVIP = false;
  bool estaBloqueado = false;

  if ((tenEntrada || eVIP) && !estaBloqueado) {
    print("Acceso concedido: Podes entrar ao evento.");
  } else {
    print("Acceso denegado.");
  }

// 4.5 Unha decisión co ternario

int idade = 20;

String mensaxe = idade >= 18 ? "É maior de idade" : "É menor de idade";
print(mensaxe);

// 4.6 Comentar unha condicón

//  Un bloque if avalía unha condición booleana para determinar se é verdadeira
//  ou falsa. Se a condición se cumpre, o programa executa o bloque de código
//  interno; se non, saltalo ou pasa ao seguinte else.

// 4.7 Aplicar un desconto

double precio = 22.5;
bool descuento = true;

if(descuento){
  precio *= 0.9;
}

print('Aplicouse un desconto deo 10% : $precio');

// 4.8 Repetir equipos

int totalAlumnos = 8;
int membrosPorEquipo = 3;

int equiposCompletos = totalAlumnos ~/ membrosPorEquipo;
int alumnosSobrantes = totalAlumnos % membrosPorEquipo;

print("Podense formar $equiposCompletos equipos completos.");
print("Quedan $alumnosSobrantes alumnos sen equipo.");

}



