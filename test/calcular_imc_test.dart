import 'package:calcular_imc/calcular_imc.dart';
import 'package:test/test.dart';

void main() {
  CalcularIMC testeCalcularIMC = CalcularIMC();

  test('Calcular o IMC', () {
    double resultadoIMCCalculado = testeCalcularIMC.valorIMCCalculado(
      82.300,
      1.73,
    );
    expect(resultadoIMCCalculado, inInclusiveRange(27.49, 27.50));
  });

  test('Classificação do IMC', () {
    double resultadoIMCCalculado = testeCalcularIMC.valorIMCCalculado(
      82.300,
      1.73,
    );
    String classificacaoIMC =
        testeCalcularIMC.classificacaoIMC(resultadoIMCCalculado);

    print('Valor retornado: $classificacaoIMC');
    identical('classificacaoIMC', 'Sobrepeso');
  });
}
