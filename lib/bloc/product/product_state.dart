part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {
  final bool loading;

  ProductInitial(this.loading);

}

class SuccessLoadedState extends ProductState {}

class ErrorFoundState extends ProductState {}
