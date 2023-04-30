import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wizarding_world/model/hufflepuff_character.dart';


Future<List<HufflepuffCharacters>> getHufflepuffCharacters() async {
  var url =
      Uri.parse('https://hp-api.onrender.com/api/characters/house/hufflepuff');
  var response = await http.get(
    url,
  );
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<HufflepuffCharacters> listHufflepuffCharacters = [];

  for (var d in data) {
    if (d != null) {
      listHufflepuffCharacters.add(HufflepuffCharacters.fromJson(d));
    }
  }
  return listHufflepuffCharacters;
}
