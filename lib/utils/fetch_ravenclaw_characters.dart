import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wizarding_world/model/ravenclaw_character.dart';

List<RavenclawCharacters> listGryffindorCharactersGlobal = [];

Future<List<RavenclawCharacters>> getRavenclawCharacters() async {
  var url =
      Uri.parse('https://hp-api.onrender.com/api/characters/house/ravenclaw');
  var response = await http.get(
    url,
  );
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<RavenclawCharacters> listRavenclawCharacters = [];

  for (var d in data) {
    if (d != null) {
      listRavenclawCharacters.add(RavenclawCharacters.fromJson(d));
    }
  }
  return listRavenclawCharacters;
}
