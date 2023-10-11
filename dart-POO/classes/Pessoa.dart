import '../enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _telefone = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  void setNome(String nome) {
    this._nome = nome;
  }

  String GetNome() {
    return _nome.toUpperCase();
  }

  void setEndereco(String endereco) {
    this._endereco = endereco;
  }

  String GetEndereco() {
    return _endereco.toUpperCase();
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao GetTipoNotificacao() {
    return _tipoNotificacao;
  }

  void setEmail(String email) {
    this._email = email;
  }

  String GetEmail() {
    return _email;
  }

  void setTelefone(String telefone) {
    this._telefone = telefone;
  }

  String GetTelefone() {
    return _telefone;
  }

  void setToken(String token) {
    this._token = token;
  }

  String GetToken() {
    return _token;
  }

  //construtor
  Pessoa(String nome, String endereco,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "endereco": _endereco,
      "Tipo de Notificação": _tipoNotificacao,
    }.toString();
  }
}
