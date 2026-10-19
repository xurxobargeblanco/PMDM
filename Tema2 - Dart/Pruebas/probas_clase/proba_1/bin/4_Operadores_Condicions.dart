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


}



