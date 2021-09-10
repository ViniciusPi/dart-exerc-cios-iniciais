import 'dart:io';

main(List<String> args) {
  var resistores = [];
  var req = [];
  String comando = "";
  double soma = 0.0;
  var addResistor;
  while (comando != "n") {
    print("deseja calcular um banco de resistores? (s/n)");
    comando = stdin.readLineSync()!;

    if (comando == "s") {
      while (addResistor != "") {
        print("insira o valor do resistor: ");
        addResistor = stdin.readLineSync();
        try {
          resistores.add(int.parse(addResistor));
        } catch (e) {
          if (addResistor != '') {
            print("caracter inválido");
          }
        }
      }
      break;
    }
  }

  for (var item in resistores) {
    item = 1 / item;
    req.add(item);
  }

  for (var i = 0; i < req.length; i++) {
    soma = soma + req[i];
  }

  var reqFinal = 1 / soma;

  print("REQ = $reqFinal");
}
