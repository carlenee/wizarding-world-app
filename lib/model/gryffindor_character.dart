
// ignore_for_file: constant_identifier_names

//https://hp-api.onrender.com/api/characters/house/gryffindor
import 'dart:convert';

List<GryffindorCharacters> gryffindorCharactersFromJson(String str) =>
    List<GryffindorCharacters>.from(
        json.decode(str).map((x) => GryffindorCharacters.fromJson(x)));

String gryffindorCharactersToJson(List<GryffindorCharacters> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GryffindorCharacters {
  GryffindorCharacters({
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
  String eyeColour;
  String hairColour;
  Wand wand;
  String patronus;
  bool hogwartsStudent;
  bool hogwartsStaff;
  String actor;
  List<String> alternateActors;
  bool alive;
  String image;

  factory GryffindorCharacters.fromJson(Map<String, dynamic> json) =>
      GryffindorCharacters(
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
        eyeColour: json["eyeColour"],
        hairColour: json["hairColour"],
        wand: Wand.fromJson(json["wand"]),
        patronus: json["patronus"],
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
        "eyeColour": eyeColour,
        "hairColour": hairColour,
        "wand": wand.toJson(),
        "patronus": patronus,
        "hogwartsStudent": hogwartsStudent,
        "hogwartsStaff": hogwartsStaff,
        "actor": actor,
        "alternate_actors": List<dynamic>.from(alternateActors.map((x) => x)),
        "alive": alive,
        "image": image,
      };
}

enum Ancestry { HALF_BLOOD, MUGGLEBORN, PURE_BLOOD, EMPTY }

final ancestryValues = EnumValues({
  "": Ancestry.EMPTY,
  "half-blood": Ancestry.HALF_BLOOD,
  "muggleborn": Ancestry.MUGGLEBORN,
  "pure-blood": Ancestry.PURE_BLOOD
});

enum Gender { MALE, FEMALE }

final genderValues = EnumValues({"female": Gender.FEMALE, "male": Gender.MALE});

enum House { GRYFFINDOR }

final houseValues = EnumValues({"Gryffindor": House.GRYFFINDOR});

enum Species { HUMAN, HALF_GIANT, WEREWOLF, GHOST }

final speciesValues = EnumValues({
  "ghost": Species.GHOST,
  "half-giant": Species.HALF_GIANT,
  "human": Species.HUMAN,
  "werewolf": Species.WEREWOLF
});

class Wand {
  Wand({
    required this.wood,
    required this.core,
    this.length,
  });

  String wood;
  Core core;
  double? length;

  factory Wand.fromJson(Map<String, dynamic> json) => Wand(
        wood: json["wood"],
        core: coreValues.map[json["core"]]!,
        length: json["length"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "wood": wood,
        "core": coreValues.reverse[core],
        "length": length,
      };
}

enum Core { PHOENIX_FEATHER, DRAGON_HEARTSTRING, UNICORN_TAIL_HAIR, EMPTY }

final coreValues = EnumValues({
  "dragon heartstring": Core.DRAGON_HEARTSTRING,
  "": Core.EMPTY,
  "phoenix feather": Core.PHOENIX_FEATHER,
  "unicorn tail-hair": Core.UNICORN_TAIL_HAIR
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
