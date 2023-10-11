import '../enum/tipo_notificacao.dart';
import 'Pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    this._cpf = _cpf;
  }

  String GetCpf() {
    return _cpf;
  }

  //construtor
  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Tipo:": "Fisica",
      "Tipo de Notificação": GetTipoNotificacao(),
      "Nome": GetNome(),
      "endereco": GetEndereco(),
      "CPF": _cpf,
    }.toString();
  }
}
