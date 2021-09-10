import 'dart:io';

main(List<String> args) {
  bool isPrime = false;
  int number;
  int i = 1;
  List<int> a = [];

  print("Type a number: ");
  number = int.parse(stdin.readLineSync()!);

  do {
    i++;

    a.add(i);
  } while (i < number - 1);

  if (a.contains(number)) {
    a.remove(number);
  } else if (number == 1) {
    a.removeAt(0);
  }

  if (a.isEmpty) {
    isPrime = true;
  } else {
    for (var v in a) {
      if (number % v == 0) {
        isPrime = false;
        break;
      } else {
        isPrime = true;
      }
    }
  }

  isPrime ? print("É primo") : print("não é primo");
}
