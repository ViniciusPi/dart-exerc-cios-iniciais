import 'dart:io';

void main(List<String> args) {
  String palavra = stdin.readLineSync()!;
  String inverso = palavra.split("").reversed.join("");

  bool isApalindrom = (inverso == palavra);

  if (isApalindrom) {
    print(" $palavra é um palíndromo ");
  } else {
    print(" $palavra não é um palíndromo ");
  }
}
