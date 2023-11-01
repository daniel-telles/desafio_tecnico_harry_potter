import '../../domain/entities/character.dart';

class CharacterDTO extends Character {
  const CharacterDTO({
    required final String name,
    required final String species,
    required final String house,
    required final String dateOfBirth,
    required final bool wizard,
    required final String ancestry,
    required final bool hogwartsStudent,
    required final bool hogwartsStaff,
    required final String actor,
    required final String image,
  }) : super(
          name: name,
          species: species,
          house: house,
          dateOfBirth: dateOfBirth,
          wizard: wizard,
          ancestry: ancestry,
          hogwartsStudent: hogwartsStudent,
          hogwartsStaff: hogwartsStaff,
          actor: actor,
          image: image,
        );

  factory CharacterDTO.fromJson(Map<String, dynamic> json) {
    return CharacterDTO(
      name: json["name"],
      species: json["species"],
      house: json["house"] ?? "unknown house",
      dateOfBirth: json["dateOfBirth"] ?? 'unknown',
      wizard: json["wizard"],
      ancestry: json["ancestry"] ?? 'unknown',
      hogwartsStudent: json["hogwartsStudent"],
      hogwartsStaff: json["hogwartsStaff"],
      actor: json["actor"] ?? 'unknown',
      image: json["image"],
    );
  }

  factory CharacterDTO.fromEntity(Character character) {
    return CharacterDTO(
      name: character.name,
      species: character.species,
      house: character.house,
      dateOfBirth: character.dateOfBirth,
      wizard: character.wizard,
      ancestry: character.ancestry,
      hogwartsStudent: character.hogwartsStudent,
      hogwartsStaff: character.hogwartsStaff,
      actor: character.actor,
      image: character.image,
    );
  }
}
