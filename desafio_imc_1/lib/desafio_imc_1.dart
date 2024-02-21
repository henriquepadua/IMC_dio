//import 'package:desafio_imc_1/desafio_imc_1.dart' as desafio_imc_1;
import 'dart:io';
//import 'package:desafio_imc_1/Pessoa.dart';

void main() {
  try {
    print("Digite seu peso");
    var peso = double.parse(stdin.readLineSync()!);
    print("Digite sua altura");
    var altura = double.parse(stdin.readLineSync()!);

    if(peso > 0 && altura > 0) print(calculaimc(peso, altura));
  } catch (e) {
    print("Não foi possível calcular o imc");
  }
}

int calculaimc(double peso, double altura) {
  return (peso / (altura * altura)).toInt();
}