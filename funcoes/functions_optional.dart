void main(List<String> args) {
  printName("Ricardo");
  printName("Guiseppe", sobrenome: "camédia");
}

void printName(String name, {String? sobrenome}) {
  print("Meu nome é: $name");
  if (sobrenome != null) {
    print("Meu Sobrenome é $sobrenome");
    var nomeCompleto = name + " " + sobrenome;
    print("nome Completo: $nomeCompleto");
  }
}
