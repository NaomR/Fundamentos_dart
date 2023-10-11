import '../../classes/Pessoa.dart';
import '../NotificacaoInterface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando SMS para: ${pessoa.GetNome()}");
  }
}
