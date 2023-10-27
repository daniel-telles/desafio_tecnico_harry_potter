// ignore_for_file: public_member_api_docs, sort_constructors_first

class Character {
  final String? name;
  final String? species;
  final String? gender;
  final String? house;
  final String? dateOfBirth;
  final bool? wizard;
  final String? ancestry;
  final String? eyeColour;
  final String? hairColour;
  final String? patronus;
  final bool? hogwartsStudent;
  final bool? hogwartsStaff;
  final String? actor;
  final bool? alive;
  final String? image;

  Character({
    this.name,
    this.species,
    this.gender,
    this.house,
    this.dateOfBirth,
    this.wizard,
    this.ancestry,
    this.eyeColour,
    this.hairColour,
    this.patronus,
    this.hogwartsStudent,
    this.hogwartsStaff,
    this.actor,
    this.alive,
    this.image,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
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
