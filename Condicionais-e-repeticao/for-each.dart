void main(List<String> args) {
  var numeros = [0, 35, 120, 357, 1225, 5000];
  for (var numero in numeros) {
    print(numero);
  }

  var letras = ["N", "A", "O", "M"];
  for (var letra in letras) {
    print(letra);
  }

  var cores = ["Azul", "Vermelho", "Verde", "Roxo"];
  cores.forEach((cor) {
    print("Cor => $cor");
  });
}
