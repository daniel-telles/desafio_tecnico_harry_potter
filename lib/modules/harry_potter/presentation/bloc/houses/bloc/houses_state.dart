part of 'houses_bloc.dart';

sealed class HousesState extends Equatable {
  const HousesState();
  
  @override
  List<Object> get props => [];
}

final class HousesInitial extends HousesState {}
