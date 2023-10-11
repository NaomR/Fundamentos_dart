import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  var opcao = "";
  var acumulador = 0.0;
  do {
    print("Digite um numero ou aperte 'x' para sair do loop");
    var line = stdin.readLineSync(encoding: utf8);
    opcao = line ?? "";
    if (opcao != "x") {
      var numero = double.parse(opcao);
      acumulador = acumulador + numero;
    }
  } while (opcao != "x");
  print(acumulador);
}
