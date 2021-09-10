import 'dart:io';

void main() {
  print("Put your name");
  String name = stdin.readLineSync()!;

  print("put your age");
  int age = int.parse(stdin.readLineSync()!);

  age = 100 - age;

  print("$name, faltam $age anos para você chegar aos 100");
}
