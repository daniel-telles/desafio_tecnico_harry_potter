// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class Character extends Equatable {
  final String name;
  final String species;
  final String house;
  final String dateOfBirth;
  final bool wizard;
  final String ancestry;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String actor;
  final String image;

  const Character({
    required this.name,
    required this.species,
    required this.house,
    required this.dateOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.image,
  });

  @override
  List<Object?> get props {
    return [
      name,
      species,
      house,
      dateOfBirth,
      wizard,
      ancestry,
      hogwartsStudent,
      hogwartsStaff,
      actor,
      image,
    ];
  }
}
