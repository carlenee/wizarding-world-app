// To parse this JSON data, do
//
//     final hufflepuffCharacters = hufflepuffCharactersFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<HufflepuffCharacters> hufflepuffCharactersFromJson(String str) =>
    List<HufflepuffCharacters>.from(
        json.decode(str).map((x) => HufflepuffCharacters.fromJson(x)));

String hufflepuffCharactersToJson(List<HufflepuffCharacters> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HufflepuffCharacters {
  HufflepuffCharacters({
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
  HairColour hairColour;
  Wand wand;
  Patronus patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  List<String> alternateActors;
  bool alive;
  String image;

  factory HufflepuffCharacters.fromJson(Map<String, dynamic> json) =>
      HufflepuffCharacters(
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
        hairColour: hairColourValues.map[json["hairColour"]]!,
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
        "hairColour": hairColourValues.reverse[hairColour],
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

enum Ancestry { EMPTY, HALF_BLOOD, MUGGLEBORN }

final ancestryValues = EnumValues({
  "": Ancestry.EMPTY,
  "half-blood": Ancestry.HALF_BLOOD,
  "muggleborn": Ancestry.MUGGLEBORN
});

enum EyeColour { GREY, HAZEL, EMPTY }

final eyeColourValues = EnumValues(
    {"": EyeColour.EMPTY, "grey": EyeColour.GREY, "hazel": EyeColour.HAZEL});

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({"female": Gender.FEMALE, "male": Gender.MALE});

enum HairColour { BROWN, EMPTY, BLONDE, BLOND }

final hairColourValues = EnumValues({
  "blond": HairColour.BLOND,
  "blonde": HairColour.BLONDE,
  "brown": HairColour.BROWN,
  "": HairColour.EMPTY
});

enum House { HUFFLEPUFF }

final houseValues = EnumValues({"Hufflepuff": House.HUFFLEPUFF});

enum Patronus { EMPTY, BOAR }

final patronusValues = EnumValues({"boar": Patronus.BOAR, "": Patronus.EMPTY});

enum Species { HUMAN, GHOST }

final speciesValues =
    EnumValues({"ghost": Species.GHOST, "human": Species.HUMAN});

class Wand {
  Wand({
    required this.wood,
    required this.core,
    this.length,
  });

  Wood wood;
  Core core;
  double? length;

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        wood: woodValues.map[json["wood"]]!,
        core: coreValues.map[json["core"]]!,
        length: json["length"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "wood": woodValues.reverse[wood],
        "core": coreValues.reverse[core],
        "length": length,
      };
}

enum Core { UNICORN_HAIR, EMPTY }

final coreValues =
    EnumValues({"": Core.EMPTY, "unicorn hair": Core.UNICORN_HAIR});

enum Wood { ASH, EMPTY }

final woodValues = EnumValues({"ash": Wood.ASH, "": Wood.EMPTY});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
