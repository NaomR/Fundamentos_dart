//Funções recursivas -> calculo fatorial
void main(List<String> args) {
  var fatorialCalculado = fatorial(5);
  print(fatorialCalculado);
}

int fatorial(int numero) {
  if (numero == 1) {
    return 1;
  }
  return numero * fatorial(numero - 1);
}
