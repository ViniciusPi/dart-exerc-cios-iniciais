import 'dart:io';

void main(List<String> args) {
  List<String> computerPlays = ["pedra", "papel", "tesoura"];

  print("Jó-KEN-PÔ: ");
  String humanPlay = stdin.readLineSync()!;

  computerPlays.shuffle();

  print("Maquina joga: \n${computerPlays[1]}  ");

  Future resultado() async {
    await Future.delayed(Duration(milliseconds: 400));
    print(jogo(humanPlay, computerPlays[1], computerPlays));
  }

  resultado();
}

String jogo(String jogadaA, String jogadaB, List regras) {
  if (jogadaA == jogadaB) {
    return "EMPATE";
  } else if (jogadaA == "papel" && jogadaB == "pedra") {
    return "HUMANO VENCE";
  } else if (jogadaA == "pedra" && jogadaB == "tesoura") {
    return "HUMANO VENCE";
  } else if (jogadaA == "tesoura" && jogadaB == "papel") {
    return "HUMANO VENCE";
  } else if (!regras.contains(jogadaA)) {
    return "jogada inválida";
  } else {
    return "MÁQUINA VENCE";
  }
}
