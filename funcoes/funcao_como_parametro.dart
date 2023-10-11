void main(List<String> args) {
  print(incrementar(15));
  print(executar(25, decrementar));
  print("===================");
}

int executar(int numero, Function func) {
  return func(numero);
}

int incrementar(int numero) {
  return numero + 1;
}

int decrementar(int numero) {
  return numero - 1;
}
