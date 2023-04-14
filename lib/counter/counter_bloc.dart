import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter/material.dart";
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterInitialState> {
  CounterBloc() : super(CounterInitialState(count: 0)) {
    on<CounterEvent>((event, emit) {
      if(event is IncrementCounter){
        emit(CounterInitialState(count: state.count + 1));
      }
      else if(event is DecrementCounter) {
      emit(CounterInitialState(count: state.count - 1));
      }
      else {
          emit(CounterInitialState(count: state.count * 5));
      }
    });
  }
}
