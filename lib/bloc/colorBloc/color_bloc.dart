import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitial()) {
    on<ColorEvent>((event, emit) {
        if(event is ChangeColorEvent) {
          emit(ChangeColorState(color: event.color));
        }
        else if(event is ChangOriginalColor){
          emit(ChangeColorState(color: Colors.grey));
        }
    });
  }
}
