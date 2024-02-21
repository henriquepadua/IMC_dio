import 'dart:io';

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