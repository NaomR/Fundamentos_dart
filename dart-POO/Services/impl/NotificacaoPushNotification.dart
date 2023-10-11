import '../../classes/Pessoa.dart';
import '../NotificacaoInterface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando PUSH para: ${pessoa.GetNome()}");
  }
}
