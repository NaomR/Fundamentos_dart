import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print('Calculadora Dart 1.0');

  print("Informe o primeiro valor:");
  var line = stdin.readLineSync(encoding: utf8);
  var n1 = double.parse(line ?? "0");

  print("Informe o segundo valor:");
  line = stdin.readLineSync(encoding: utf8);
  var n2 = double.parse(line ?? "0");

  print("Informe qual operação deseja aplicar =  < (+)(-)(/)(*) >");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "";

  double resultado = 0.0;
  switch (operacao) {
    case "+":
      resultado = n1 + n2;
      break;

    case "-":
      resultado = n1 - n2;
      break;
    case "/":
      resultado = n1 / n2;
      break;
    case "*":
      resultado = n1 * n2;
      break;
    default:
      print("Operação Inválida!");
      exit(0);
  }
  print("Operação solicitada: $operacao");
  print("O resultado é: $resultado");
}
