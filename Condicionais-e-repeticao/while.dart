import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  var contador = 0;
  var total = 15;
  while (contador < total) {
    contador = contador + 1;
    print(contador);
  }

  //brincando com o loop
  print("Digite um numero ou aperte 'x' para sair do loop");
  var line = stdin.readLineSync(encoding: utf8);
  double acumulador = 0;
  while (line != "x") {
    var numero = double.parse(line ?? "");
    acumulador = acumulador + numero;
    print("Digite um numero ou aperte 'x' para sair do loop");
    line = stdin.readLineSync(encoding: utf8);
  }
  print(acumulador);
}
