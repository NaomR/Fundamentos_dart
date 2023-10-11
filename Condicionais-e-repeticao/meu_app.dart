import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Informe a primeira Nota:");
  var line = stdin.readLineSync(encoding: utf8);
  var prova1 = int.parse(line == null ? "" : line);

  print("Informe a segunda nota:");
  line = stdin.readLineSync(encoding: utf8);
  var prova2 = int.parse(line ?? "0");

  var media = (prova1 + prova2) / 2;

  if (media >= 7) {
    print("Aprovado, Parabens.Sua média foi de: $media");
  } else if (media >= 5) {
    print("Você está de Recuperação, sua média foi de: $media");
  } else {
    print('Reprovado, sua média foi de $media');
  }
}
