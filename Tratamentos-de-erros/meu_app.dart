import 'dart:io';

import 'exception/nome_invalido_exception.dart';
import 'models/Console_Utils.dart';
import 'models/aluno.dart';

void execute() {
  print("Bem vindo(a) aos Sistem de Notas 1.0");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do Aluno:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (NomeInvalidoException) {
    print(NomeInvalidoException);
    exit(0);
  }
  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComsaida(
        "Digite a nota ou x para sair: ", "x");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A média do Aluno $nome foi de: ${aluno.retornaMedia()}");
  if (aluno.aprovado(6)) {
    print("Parabéns, você foi aprovado");
  } else {
    print("Que bad, você foi reprovado");
  }
}
