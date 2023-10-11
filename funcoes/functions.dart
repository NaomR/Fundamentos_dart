void main(List<String> args) {
  printHelloWorld();
  printName("Ricardo");
  print(returnNumber());
  var resultado = sum(5, 7);
  print(resultado);
}

void printHelloWorld() {
  print("Hello World");
}

void printName(String name) {
  print("My name is: $name");
}

int returnNumber() {
  return 15;
}

int sum(int number1, int number2) {
  return number1 + number2;
}
