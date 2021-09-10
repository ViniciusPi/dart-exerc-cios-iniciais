import 'dart:io';

void main() {
  print("Quantos fibonacci deseja gerar?");
  int fiboQuantidade = int.parse(stdin.readLineSync()!);

  print(fibonacciGenerator(fiboQuantidade));
}

List<int> fibonacciGenerator(int ciclos) {
  int fiboNumber = 0;
  List<int> fibo = [];

  for (var i = 0; i < ciclos; i++) {
    if (i == 0 || i == 1) {
      fibo.add(i);
      print(fibo);
    } else if (i < 2) {
      break;
    } else {
      fiboNumber = fibo[i - 2] + fibo[i - 1];
      fibo.add(fiboNumber);
    }
  }

  return fibo;
}
