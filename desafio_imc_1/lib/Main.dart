import 'dart:io';

import 'package:desafio_imc_1/desafio_imc_1.dart';

void main() {
  try {
    print("Digite seu peso");
    var peso = double.parse(stdin.readLineSync()!);
    print("Digite sua altura");
    var altura = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Não foi possível calcular o imc");
  }
}