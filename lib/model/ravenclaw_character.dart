//https://hp-api.onrender.com/api/characters/house/ravenclaw
// To parse this JSON data, do
//
//     final ravenclawCharacters = ravenclawCharactersFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<RavenclawCharacters> ravenclawCharactersFromJson(String str) =>
    List<RavenclawCharacters>.from(
        json.decode(str).map((x) => RavenclawCharacters.fromJson(x)));

String ravenclawCharactersToJson(List<RavenclawCharacters> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RavenclawCharacters {
  RavenclawCharacters({
    required this.id,
    required this.name,
    required this.alternateNames,
    required this.species,
    required this.gender,
    required this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alternateActors,
    required this.alive,
    required this.image,
  });

  String id;
  String name;
  List<String> alternateNames;
  Species species;
  Gender gender;
  House house;
  String? dateOfBirth;
  int? yearOfBirth;
  bool wizard;
  Ancestry ancestry;
  EyeColour eyeColour;
  String hairColour;
  Wand wand;
  Patronus patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  List<String> alternateActors;
  bool alive;
  String image;

  factory RavenclawCharacters.fromJson(Map<String, dynamic> json) =>
      RavenclawCharacters(
        id: json["id"],
        name: json["name"],
        alternateNames:
            List<String>.from(json["alternate_names"].map((x) => x)),
        species: speciesValues.map[json["species"]]!,
        gender: genderValues.map[json["gender"]]!,
        house: houseValues.map[json["house"]]!,
        dateOfBirth: json["dateOfBirth"],
        yearOfBirth: json["yearOfBirth"],
        wizard: json["wizard"],
        ancestry: ancestryValues.map[json["ancestry"]]!,
        eyeColour: eyeColourValues.map[json["eyeColour"]]!,
        hairColour: json["hairColour"],
        wand: Wand.fromJson(json["wand"]),
        patronus: patronusValues.map[json["patronus"]]!,
        hogwartsStudent: json["hogwartsStudent"],
        hogwartsStaff: json["hogwartsStaff"],
        actor: json["actor"],
        alternateActors:
            List<String>.from(json["alternate_actors"].map((x) => x)),
        alive: json["alive"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternate_names": List<dynamic>.from(alternateNames.map((x) => x)),
        "species": speciesValues.reverse[species],
        "gender": genderValues.reverse[gender],
        "house": houseValues.reverse[house],
        "dateOfBirth": dateOfBirth,
        "yearOfBirth": yearOfBirth,
        "wizard": wizard,
        "ancestry": ancestryValues.reverse[ancestry],
        "eyeColour": eyeColourValues.reverse[eyeColour],
        "hairColour": hairColour,
        "wand": wand.toJson(),
        "patronus": patronusValues.reverse[patronus],
        "hogwartsStudent": hogwartsStudent,
        "hogwartsStaff": hogwartsStaff,
        "actor": actor,
        "alternate_actors": List<dynamic>.from(alternateActors.map((x) => x)),
        "alive": alive,
        "image": image,
      };
}

enum Ancestry { EMPTY, MUGGLEBORN }

final ancestryValues =
    EnumValues({"": Ancestry.EMPTY, "muggleborn": Ancestry.MUGGLEBORN});

enum EyeColour { BROWN, GREY, EMPTY }

final eyeColourValues = EnumValues(
    {"brown": EyeColour.BROWN, "": EyeColour.EMPTY, "grey": EyeColour.GREY});

enum Gender { FEMALE, MALE }

final genderValues = EnumValues({"female": Gender.FEMALE, "male": Gender.MALE});

enum House { RAVENCLAW }

final houseValues = EnumValues({"Ravenclaw": House.RAVENCLAW});

enum Patronus { SWAN, HARE, EMPTY }

final patronusValues = EnumValues(
    {"": Patronus.EMPTY, "hare": Patronus.HARE, "swan": Patronus.SWAN});

enum Species { HUMAN, GHOST }

final speciesValues =
    EnumValues({"ghost": Species.GHOST, "human": Species.HUMAN});

class Wand {
  Wand({
    required this.wood,
    required this.core,
    this.length,
  });

  String wood;
  String core;
  dynamic length;

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        wood: json["wood"],
        core: json["core"],
        length: json["length"],
      );

  Map<String, dynamic> toJson() => {
        "wood": wood,
        "core": core,
        "length": length,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
