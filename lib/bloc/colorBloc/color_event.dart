// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'color_bloc.dart';

@immutable
abstract class ColorEvent {}

class ChangOriginalColor extends ColorEvent {
  
}

class ChangeColorEvent extends ColorEvent {
  final Color color;
  ChangeColorEvent({
    required this.color,
  });
}
