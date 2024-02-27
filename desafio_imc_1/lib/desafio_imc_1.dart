import 'dart:io';
import 'package:desafio_imc_1/Repository/IMc_repository.dart';

class IMC {
  var niveis = IMc_repository().retornarImcs();

  int calculaimc(int peso, double altura) {
    return (peso / (altura * altura)).toInt();
  }

  void verificarNivelIMC(int imc) {
    Map<int, Map<String, dynamic>> nivel = niveis.asMap();
    for (var item in niveis) {
      if (item['id'] < 19) {
        print("Seu Imc esta com Indice de Magreza: $item['id']");
        return;
      } else if (item['id'] > 19 && item['id'] < 25) {
        print("Seu Imc esta com Indice de Peso Normal: $item['id']");
        return;
      } else if (item['id'] > 25 && item['id'] < 30) {
        print("Seu Imc esta com Indice de Sobrepeso: $item['id']");
        return;
      } else if (item['id'] > 30 && item['id'] < 35) {
        print("Seu Imc esta com Indice de Obesidade de grau I: $item['id']");
        return;
      } else if (item['id'] > 35 && item['id'] < 40) {
        print("Seu Imc esta com Indice de Obesidade de grau II: $item['id']");
        return;
      } else if (item['id'] > 40) {
        print("Seu Imc esta com Indice de Obesidade de grau III: $item['id']");
        return;
      }
    }
  }
}