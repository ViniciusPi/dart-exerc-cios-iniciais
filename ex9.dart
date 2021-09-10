import 'dart:io';

void main(List<String> args) {
  List<int> a = [];
  int i = 0;
  int tries = 0;
  int guess = -57;
  bool exit = false;

  do {
    i++;
    a.add(i);
  } while (i < 100);

  a.shuffle();

  int secretNumber = a[27];

  while (guess != secretNumber && !exit) {
    print("what number do you think it is?: ");
    guess = int.parse(stdin.readLineSync()!);
    tries++;

    print(closeORfar(guess, secretNumber));

    if (guess > 200) {
      exit = true;
    }
  }

  if (exit) {
    print("a resposta certa é: ${secretNumber}, número de tentativas: $tries");
  } else {
    print(
        "Parabéns, você acertou. sua resposta foi: $guess e o número misterioso é: $secretNumber. você precisou de: $tries tentativas ");
  }
}

String closeORfar(int palpite, int resposta) {
  if (palpite < resposta) {
    return "Too Much lower";
  } else if (resposta == palpite) {
    return "Bingo";
  } else {
    return "Too Much highier";
  }
}
