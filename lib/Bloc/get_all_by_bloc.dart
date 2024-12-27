import 'package:bloc/bloc.dart';
import 'package:drive_to_go/Repository/Api/api.dart';
import 'package:drive_to_go/Repository/ModelClass/GetallbyModelclass.dart';
import 'package:meta/meta.dart';

part 'get_all_by_event.dart';

part 'get_all_by_state.dart';

class GetAllByBloc extends Bloc<GetAllByEvent, GetAllByState> {
  late List <GetallbyModelclass>getallbyModelclass;
  GetallbyApi getallbyApi = GetallbyApi();

  GetAllByBloc() : super(GetAllByInitial()) {
    on<FetchGetAllBy>((event, emit) async {
      emit(GetAllByLoading());
      try{
        getallbyModelclass= await getallbyApi.getallby();
        emit(GetAllByLoaded());
      }
      catch(e){
        print(e.toString());
        emit(GetAllByError());
      }

    });
    }
  }
