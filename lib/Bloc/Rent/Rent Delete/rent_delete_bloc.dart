import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'rent_delete_event.dart';
part 'rent_delete_state.dart';

class RentDeleteBloc extends Bloc<RentDeleteEvent, RentDeleteState> {
  RentDeleteBloc() : super(RentDeleteInitial()) {
    on<RentDeleteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
