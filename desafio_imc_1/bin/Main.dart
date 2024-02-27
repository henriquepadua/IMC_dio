import 'dart:io';
import 'package:desafio_imc_1/Repository/IMc_repository.dart';
import 'package:desafio_imc_1/desafio_imc_1.dart';
import 'package:test/test.dart';

void main() {
  try {
    print("Digite seu peso");
    var peso = int.parse(stdin.readLineSync()!);
    print("Digite sua altura");
    var altura = double.parse(stdin.readLineSync()!);
 
    if (peso > 0 && altura > 0) {
      IMC().verificarNivelIMC(IMC().calculaimc(peso, altura));
    }
  } catch (e) {
    throwsException;
    print("Não foi possível calcular o imc");
  }
}