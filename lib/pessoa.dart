class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  void setNome(String nome) => _nome = nome;

  String getNome() => _nome!;

  void setPeso(double peso) => _peso = peso;

  double getPeso() => _peso!;

  void setAltura(double altura) => _altura = altura;

  double getAltura() => _altura!;

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura,
    }.toString();
  }
}
