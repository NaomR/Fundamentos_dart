import 'dart:io';

void main() {
  var valorInicial = double.parse(stdin.readLineSync()!);
  var taxaJuros = double.parse(stdin.readLineSync()!);
  //var periodo = int.parse(stdin.readLineSync()!);

  var valorFinal = valorInicial;

  //TODO: Iterar, baseado no período em anos, para calculo do valorFinal com os juros.
  double juros = 0;
  juros = juros + ((valorInicial + juros) * taxaJuros);
  valorFinal = valorInicial + juros;

  print("Valor final do investimento: R\$ $valorFinal");
}
