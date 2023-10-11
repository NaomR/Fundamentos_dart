import '../enum/tipo_notificacao.dart';
import 'Pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _CNPJ = "";

  void setCnpj(String cnpj) {
    this._CNPJ = cnpj;
  }

  String GetCnpj() {
    return _CNPJ;
  }

  //construtor
  PessoaJuridica(String nome, String endereco, String Cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _CNPJ = Cnpj;
  }

  @override
  String toString() {
    return {
      "Tipo": "Juridica",
      "Tipo de Notificação": GetTipoNotificacao(),
      "Nome": GetNome(),
      "endereco": GetEndereco(),
      "CNpj": _CNPJ,
    }.toString();
  }
}
