// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class Character extends Equatable {
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

  const Character({
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



  @override
  List<Object?> get props {
    return [
      name,
      species,
      gender,
      house,
      dateOfBirth,
      wizard,
      ancestry,
      eyeColour,
      hairColour,
      patronus,
      hogwartsStudent,
      hogwartsStaff,
      actor,
      alive,
      image,
    ];
  }
}
