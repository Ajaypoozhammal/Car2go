import 'package:bloc/bloc.dart';
import 'package:drive_to_go/Repository/Api/api.dart';
import 'package:drive_to_go/Repository/ModelClass/RentAllModel.dart';
import 'package:meta/meta.dart';

part 'rent_all_event.dart';
part 'rent_all_state.dart';

class RentAllBloc extends Bloc<RentAllEvent, RentAllState> {
  late List <RentAllModel>rentAllModel;
  GetallbyApi getallbyApi = GetallbyApi();

  RentAllBloc() : super(RentAllInitial()) {
    on<RentAllEvent>((event, emit)async{

    });
  }
}
