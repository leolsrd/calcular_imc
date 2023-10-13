import 'dart:convert';
import 'dart:io';

import 'package:calcular_imc/calcular_imc.dart';
import 'package:calcular_imc/pessoa.dart';

class InteracaoUsuario {
  String scanner = "";
  String? nomeEntrada;
  double? pesoEntrada;
  double? alturaEntrada;
  bool validado = true;

  dynamic interacaoUsuario() {
    Pessoa p1 = Pessoa();
    stdout.writeln("Calculando o IMC");

    void recebeNomeValidado() {
      while (true) {
        stdout.write("Informe seu nome: ");
        nomeEntrada = stdin.readLineSync(encoding: utf8).toString().trim();
        if (nomeEntrada!.isEmpty) {
          stdout.write('Nome não pode ser vazio \n');
        } else if (nomeEntrada!.length < 3) {
          stdout.write('Nome não pode ser menor que 3 caracteres \n');
        } else {
          p1.setNome(nomeEntrada!);
          break;
        }
      }
    }

    void recebePesoValidado() {
      while (true) {
        stdout.write("Informe o seu peso: ");
        scanner = stdin.readLineSync(encoding: utf8)!;
        pesoEntrada =
            double.tryParse(scanner) != null ? double.parse(scanner) : 0;
        if (pesoEntrada! <= 0) {
          stdout
              .writeln("Peso não pode ser menor ou igual a zero: $pesoEntrada");
          recebePesoValidado();
        }
        p1.setPeso(pesoEntrada!);
        break;
      }
    }

    void recebeAlturaValidada() {
      while (true) {
        stdout.write("Informe a sua altura: ");
        scanner = stdin.readLineSync(encoding: utf8)!;
        alturaEntrada =
            double.tryParse(scanner) != null ? double.parse(scanner) : 0;
        if (alturaEntrada! <= 0.15) {
          stdout.writeln("Altura não pode ser menor que 0.15: $alturaEntrada");
          recebeAlturaValidada();
        }
        p1.setAltura(alturaEntrada!);
        break;
      }
    }

    while (validado) {
      recebeNomeValidado();
      recebePesoValidado();
      recebeAlturaValidada();
      CalcularIMC calcIMC = CalcularIMC();
      calcIMC.valorIMCCalculado(p1.getPeso(), p1.getAltura());
      print(calcIMC);
      validado = false;
    }
  }
}
