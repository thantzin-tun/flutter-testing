part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class shoppingCardClickEvent extends ProductEvent {}
class orderListClickEvent extends ProductEvent {}
