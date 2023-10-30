import '../../domain/entities/character.dart';

class CharacterDTO {
  final String name;
  final String species;
  final String gender;
  final String house;
  final String dateOfBirth;
  final bool wizard;
  final String ancestry;
  final String eyeColour;
  final String hairColour;
  final String patronus;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String actor;
  final bool alive;
  final String image;

  CharacterDTO({
    required this.name,
    required this.species,
    required this.gender,
    required this.house,
    required this.dateOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alive,
    required this.image,
  });

  Character toEntity() {
    return Character(
      name: name,
      species: species,
      gender: gender,
      house: house,
      dateOfBirth: dateOfBirth,
      wizard: wizard,
      ancestry: ancestry,
      eyeColour: eyeColour,
      hairColour: hairColour,
      patronus: patronus,
      hogwartsStudent: hogwartsStudent,
      hogwartsStaff: hogwartsStaff,
      actor: actor,
      alive: alive,
      image: image,
    );
  }

  factory CharacterDTO.fromJson(Map<String, dynamic> json) {
    return CharacterDTO(
      name: json["name"],
      species: json["species"],
      gender: json["gender"],
      house: json["house"],
      dateOfBirth: json["dateOfBirth"],
      wizard: json["wizard"],
      ancestry: json["ancestry"],
      eyeColour: json["eyeColour"],
      hairColour: json["hairColour"],
      patronus: json["patronus"],
      hogwartsStudent: json["hogwartsStudent"],
      hogwartsStaff: json["hogwartsStaff"],
      actor: json["actor"],
      alive: json["alive"],
      image: json["image"],
    );
  }
}
