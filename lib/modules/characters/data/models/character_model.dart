import '../../domain/entities/character.dart';

class CharacterDTO extends Character {

  const CharacterDTO({
    required final String name,
    required final String species,
    required final String gender,
    required final String house,
    required final String dateOfBirth,
    required final bool wizard,
    required final String ancestry,
    required final String eyeColour,
    required final String hairColour,
    required final String patronus,
    required final bool hogwartsStudent,
    required final bool hogwartsStaff,
    required final String actor,
    required final bool alive,
    required final String image,
  }) : super(
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

  factory CharacterDTO.fromJson(Map<String, dynamic> json) {
    return CharacterDTO(
      name: json["name"],
      species: json["species"],
      gender: json["gender"],
      house: json["house"],
      dateOfBirth: json["dateOfBirth"] ?? 'unknown',
      wizard: json["wizard"],
      ancestry: json["ancestry"] ?? 'unknown',
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

  factory CharacterDTO.fromEntity(Character character) {
    return CharacterDTO(
      name: character.name,
      species: character.species,
      gender: character.gender,
      house: character.house,
      dateOfBirth: character.dateOfBirth,
      wizard: character.wizard,
      ancestry: character.ancestry,
      eyeColour: character.eyeColour,
      hairColour: character.hairColour,
      patronus: character.patronus,
      hogwartsStudent: character.hogwartsStudent,
      hogwartsStaff: character.hogwartsStaff,
      actor: character.actor,
      alive: character.alive,
      image: character.image,
    );
  }
}
