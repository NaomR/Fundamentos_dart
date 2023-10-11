import '../../classes/Pessoa.dart';
import '../NotificacaoInterface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void EnviarNotificacao(Pessoa pessoa) {
    print("Enviando E-Mail para: ${pessoa.GetNome()}");
  }
}
