import '../classes/Pessoa.dart';
import '../enum/tipo_notificacao.dart';
import 'NotificacaoInterface.dart';
import 'impl/NotificacaoEmail.dart';
import 'impl/NotificacaoPushNotification.dart';
import 'impl/NotificacaoSMS.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;
  void notificar(Pessoa pessoa) {
    switch (pessoa.GetTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.EnviarNotificacao(pessoa);
    } else {
      print("Pessoa sem notificação :O ");
    }
  }
}
