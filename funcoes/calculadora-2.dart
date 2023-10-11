import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("Bem-vindo a Calculadora Dart v2.0");
  // refatorando a calculadora dart
  var num1 = double.parse(lerConsole("Informe o primeiro valor:"));

  var num2 = double.parse(lerConsole("Informe o segundo valor:"));

  var operacao =
      lerConsole("Informe qual operação deseja aplicar =  < (+)(-)(/)(*) >");

  calcular(operacao, num1, num2);
}

void calcular(String operacao, double num1, double num2) {
  double resultado = 0;
  switch (operacao) {
    case "+":
      resultado = soma(num1, num2);
      break;
    case "-":
      resultado = sub(num1, num2);
      break;
    case "/":
      resultado = div(num1, num2);
      break;
    case "*":
      resultado = multi(num1, num2);
      break;
    default:
      print("Operação Inválida!!");
      exit(0);
  }
  print("Operação Solicitada: $operacao");
  print("Resultado Obtido: $resultado");
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double soma(double num1, double num2) {
  return num1 + num2;
}

double sub(double num1, double num2) {
  return num1 - num2;
}

double div(double num1, double num2) {
  return num1 / num2;
}

double multi(double num1, double num2) {
  return num1 * num2;
}
