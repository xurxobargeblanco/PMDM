// 8. Funcións, callbacks e closures.

void main(){
  // 8.1 Crear e chamar unha función
  saludar();
  // 8.2 Sumar cunha frecha
  print(sumar(2, 3));
  // 8.3 Omitir o tipo de retorno
  print(sumar1(2, 3));
  // 8.4 Párametros nomeados obrigatorios
  print(formatearNome(nome: 'Diego', apellido: 'Rodicio'));
  // 8.5 Parámetros nomeados anulables
  print(formatearNome1(nome: 'Diego', apellido: 'Rodicio')); 
  print(formatearNome1(nome: 'Diego'));                     
  print(formatearNome1(apellido: 'Rodicio')); 
  // 8.6 Valores por defecto
  print(crearEtiqueta());                          
  print(crearEtiqueta(cor: 'vermello'));        
  print(crearEtiqueta(cor: 'azul', tamano: 20));
  // 8.7 Un parámetro posicional opcional
  print(dobre(5));
  // 8.8 Devolver o dobre

  // 8.9 Recibir unha operación
}

// 8.1 Crear e chamar unha función

void saludar(){
  print('Ola');
}

// 8.2 Sumar cunha frecha

int sumar(int a, int b) => a + b;

// 8.3 Omitir o tipo de retorno

sumar1(int a,int b) => a+b;

// 8.4 Párametros nomeados obrigatorios

String formatearNome({required String nome, required String apellido}) {
  return '${nome.toUpperCase()} ${apellido.toUpperCase()}';
}

// 8.5 Parámetros nomeados anulables

String formatearNome1({String? nome, String? apellido}) {
  return '${nome ?? ''} ${apellido ?? ''}'.trim().toUpperCase();
}

// 8.6 Valores por defecto

String crearEtiqueta({String cor = 'negro', int tamano = 12}) {
  return 'Etiqueta(cor= $cor, tamaño= $tamano)';
}

// 8.7 Un parámetro posicional opcional

String saudoPersoal(String nome, [String? alcume]) {
  if (alcume != null) {
    return 'Ola, $nome ($alcume)';
  }
  return 'Ola, $nome';
}

// 8.8 Devolver o dobre

int dobre(int n) => n * 2;

// 8.9 Recibir unha operación

int sumar2(int a, int b) => a + b;
int restar(int a, int b) => a - b;

int aplicar(int x, int y, int Function(int, int) op) {
  return op(x, y);
}