import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wizarding_world/model/gryffindor_character.dart';

List<GryffindorCharacters> listGryffindorCharactersGlobal = [];

Future<List<GryffindorCharacters>> getGryffindorCharacters() async {
  listGryffindorCharactersGlobal = [];

  var url =
      Uri.parse('https://hp-api.onrender.com/api/characters/house/gryffindor');
  var response = await http.get(
    url,
  );
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<GryffindorCharacters> listGryffindorCharacters = [];

  for (var d in data) {
    if (d != null) {
      listGryffindorCharacters.add(GryffindorCharacters.fromJson(d));
      listGryffindorCharactersGlobal.add(GryffindorCharacters.fromJson(d));
    }
  }
  return listGryffindorCharacters;
}
