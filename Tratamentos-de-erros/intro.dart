import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  print("digite um numero:");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    double numero = double.parse(line ?? "");
    print(numero);
  } catch (e) {
    print("Numero inválido! $line");
  } finally {
    print("Finalizando Programa.");
  }
}
