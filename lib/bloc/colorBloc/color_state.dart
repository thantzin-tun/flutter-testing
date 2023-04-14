// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'color_bloc.dart';

@immutable

abstract class ColorState {}

class ColorInitial extends ColorState {
  
}

class ChangeColorState extends ColorState {
  final Color color;
  ChangeColorState({
    required this.color,
  });
}
