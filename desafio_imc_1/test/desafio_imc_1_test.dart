import 'package:desafio_imc_1/Pessoa.dart';
import 'package:test/test.dart';
import '../bin/desafio_imc_1.dart';

void main() {
  test('Calculando imc', () {
    Pessoa pessoa = Pessoa(94, 1.76);
    expect(calculaimc(pessoa.peso, pessoa.altura).toInt(), 30);
  });

  test('Imc', () {
    Pessoa pessoa = Pessoa(94, 1.76);
    expect(calculaimc(pessoa.peso, pessoa.altura).floor(), 30);
  });
}