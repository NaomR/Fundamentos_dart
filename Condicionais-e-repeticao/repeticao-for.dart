import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  var resultado = 0;
  var quantidade = 0;
  print("Informe a quantidade de Numeros:");
  var line = stdin.readLineSync(encoding: utf8);
  quantidade = int.parse(line ?? "0");
  for (var i = 0; i <= quantidade; i++) {
    print("Informe o Numero:");
    line = stdin.readLineSync(encoding: utf8);
    var numero = int.parse(line ?? "0");
    resultado = resultado + numero;
    print("$i  - $resultado");
  }
}
