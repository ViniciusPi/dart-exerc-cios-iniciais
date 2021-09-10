import 'dart:io';

void main(List<String> args) {
  dynamic divisores = [];

  print("insira um número: ");

  var dividendo = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= dividendo; i++) {
    if (dividendo % i == 0) {
      divisores.add(i);
    }
  }

  print(' os divisores de $dividendo são: $divisores ');
}
