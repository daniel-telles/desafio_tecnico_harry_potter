import 'package:equatable/equatable.dart';

abstract class CharactersEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchCharactersEvent extends CharactersEvent {
  final String? house;

  FetchCharactersEvent({this.house});
}

class ChangeHouseEvent extends CharactersEvent {
  final String? house;


  ChangeHouseEvent({this.house});

}
