import 'package:bloc/bloc.dart';
import 'package:drive_to_go/Repository/Api/api.dart';
import 'package:drive_to_go/Repository/ModelClass/DeleteRentModel.dart';
import 'package:meta/meta.dart';

part 'rent_delete_event.dart';
part 'rent_delete_state.dart';

class RentDeleteBloc extends Bloc<RentDeleteEvent, RentDeleteState> {
  late  DeleteRentModel deleteRentModel;
  GetallbyApi getallbyApi=GetallbyApi();
  RentDeleteBloc() : super(RentDeleteInitial()) {
    on<FetchDeleteRent>((event, emit)async {
      emit(RentDeleteLoading());
      try{
        deleteRentModel= await getallbyApi.getDeleteRent(event.id);
        emit(RentDeleteLoaded());
      }
      catch(e){
        emit(RentDeleteError());
      }
    });
  }
}
