import 'package:bloc/bloc.dart';
import 'package:drive_to_go/Repository/Model%20Class/RentAddModelClass.dart';
import 'package:meta/meta.dart';

part 'add_event.dart';
part 'add_state.dart';

class AddBloc extends Bloc<AddEvent, AddState> {
  late RentAddModelClass rentAddModelClass;
  Addapi addapi= Addapi();
  AddBloc() : super(AddInitial()) {
    on<AddEvent>((event, emit)async {
      emit(RentAddModelClass() as AddState);
      try{
        RentAddModelClass= await addapi.getFollowers(event.name);
        emit(RentAddModelClass() as AddState);
      }
      catch(e){
        print(e.toString());
        emit(RentAddModelClass() as AddState);
      }
    });
  }
}
