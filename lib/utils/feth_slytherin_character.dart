import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wizarding_world/model/slytherin_character.dart';

List<SlytherinCharacters> listGryffindorCharactersGlobal = [];

Future<List<SlytherinCharacters>> getSlytherinCharacters() async {
  var url =
      Uri.parse('https://hp-api.onrender.com/api/characters/house/slytherin');
  var response = await http.get(
    url,
  );
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<SlytherinCharacters> listSlytherinCharacters = [];

  for (var d in data) {
    if (d != null) {
      listSlytherinCharacters.add(SlytherinCharacters.fromJson(d));
    }
  }
  return listSlytherinCharacters;
}
