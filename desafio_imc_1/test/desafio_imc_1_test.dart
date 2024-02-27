import 'package:desafio_imc_1/Pessoa.dart';
import 'package:desafio_imc_1/Repository/IMc_repository.dart';
import 'package:test/test.dart';
import '../bin/Main.dart';

void main() {
  test('Calculando imc', () {
    Pessoa pessoa = Pessoa(94, 1.76);
    //expect(calculaimc(pessoa.peso, pessoa.altura).toInt(), 30);
  });

  test('Imc', () {
    Pessoa pessoa = Pessoa(94, 1.76);
    //expect(calculaimc(pessoa.peso, pessoa.altura).floor(), 30);
  });

  test('Lista Imc', () {
    var niveis = IMc_repository().retornarImcs();
    Pessoa pessoa = Pessoa(94, 1.76);
    //expect(calculaimc(pessoa.peso, pessoa.altura), niveis.where((element) => element['id'] == calculaimc(pessoa.peso, pessoa.altura)).first);
  });
}