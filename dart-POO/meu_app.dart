import 'Services/EnviarNotificacao.dart';
import 'classes/PessoaFisica.dart';
import 'classes/PessoaJuridica.dart';
import 'enum/tipo_notificacao.dart';

void main(List<String> args) {
  var PF1 = PessoaFisica("Doujima", "Tv ale", "456.487.036-88",
      tipoNotificacao: TipoNotificacao.EMAIL);
  print(PF1);

  var PJ1 = new PessoaJuridica("Julio Corp.", "rua rw", "1554844944",
      tipoNotificacao: TipoNotificacao.PUSH_NOTIFICATION);
  print(PJ1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(PF1);
  enviarNotificacao.notificar(PJ1);
}
