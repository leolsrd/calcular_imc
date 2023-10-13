import 'dart:math';

class CalcularIMC {
  late double resultadoIMCCalculado;

  double valorIMCCalculado(double peso, double altura) {
    return resultadoIMCCalculado = (peso / pow(altura, 2));
  }

  String classificacaoIMC(double imcCalculado) {
    if (imcCalculado < 16.0) {
      return 'Magreza grave';
    } else if ((imcCalculado >= 16.0) && (imcCalculado < 17)) {
      return 'Magreza moderada';
    } else if ((imcCalculado >= 17.0) && (imcCalculado < 18.5)) {
      return 'Magreza leve';
    } else if ((imcCalculado >= 18.5) && (imcCalculado < 25)) {
      return 'Saudável';
    } else if ((imcCalculado >= 25.0) && (imcCalculado < 30)) {
      return 'Sobrepeso';
    } else if ((imcCalculado >= 30.0) && (imcCalculado < 35)) {
      return 'Obesidade Grau I';
    } else if ((imcCalculado >= 35.0) && (imcCalculado < 40)) {
      return 'Obesidade Grau II (severa)';
    } else if (imcCalculado >= 40) {
      return 'Obsidade Grau III (mórbida)';
    } else {
      return 'Valor inválido';
    }
  }

  get classificacaoIMCCalculado => (classificacaoIMC(resultadoIMCCalculado));

  @override
  String toString() {
    return {
      'De acordo com os valores informados obtivemos os seguintes dados: \n'
          'IMC calculado': resultadoIMCCalculado.toStringAsFixed(2),
      'Classificação': classificacaoIMCCalculado
    }.toString();
  }
}
