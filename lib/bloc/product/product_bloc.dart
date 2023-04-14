import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial(false)) {

    on<ProductEvent>((event, emit) => {
        if(event is shoppingCardClickEvent) {
            emit(ProductInitial(false))
        }
        else if(event is orderListClickEvent) {
          emit(ProductInitial(true))
        }
    });

  }
}
