import 'dart:io';

void main(List<String> args) {
  print("digite um número: \n");

  int numero = int.parse(stdin.readLineSync()!);

  String resultado;

  numero % 2 == 0 ? resultado = "Par" : resultado = "Impar";

  print(resultado);
}
