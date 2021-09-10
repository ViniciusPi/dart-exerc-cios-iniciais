import 'dart:convert';

import 'package:http/http.dart' as http;

Future main(List<String> arguments) async {
  final json = await fetch();

  print(json['results'][8]);
}

Future fetch() async {
  var url = Uri.parse("https://pokeapi.co/api/v2/pokemon/");

  var response = await http.get(url);

  var json = jsonDecode(response.body);

  return json;
}
