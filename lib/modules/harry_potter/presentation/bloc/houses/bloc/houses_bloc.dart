
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'houses_event.dart';
part 'houses_state.dart';

enum HousesEvent {all, gryffindor, slytherin, hufflepuff, ravenclaw}

class HousesBloc extends Bloc<HousesEvent, int> {
  HousesBloc() : super(0) {
    on<HousesEvent>((event, emit) {
      switch (event) {
        case HousesEvent.all:
          return emit(0);
        case HousesEvent.gryffindor:
        return emit(1);
        case HousesEvent.slytherin:
        return emit(2);
        case HousesEvent.ravenclaw:
        return emit(3); 
        case HousesEvent.hufflepuff:
        return emit(4); 
        default:
      }
    });
  }
}
