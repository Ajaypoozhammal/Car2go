import 'dart:core';
import 'package:bloc/bloc.dart';
import 'package:drive_to_go/Repository/Api/api.dart';
import 'package:drive_to_go/Repository/ModelClass/CreateBuyModel.dart';
import 'package:meta/meta.dart';

part 'create_buy_event.dart';

part 'create_buy_state.dart';

class CreateBuyBloc extends Bloc<CreateBuyEvent, CreateBuyState> {
  late CreateBuyModel createBuyModel;
  GetallbyApi getallbyApi = GetallbyApi();

  CreateBuyBloc() : super(CreateBuyInitial()) {
    on<FetchCreateBuy>((event, emit) async {
      emit(CreateBuyBlocLoading());
      try {
        createBuyModel = await getallbyApi.getCreateBuy(
            event.brand,
            event.location,
            event.model,
            event.description,
            event.fueltype,
            event.geartype,
            event.mileage,
            event.noOfSeats,
            event.numberofdoors,
            event.ownername,
            event.ownerphoneNumber,
            event.ownerplace,
            event.rating,
            event.rentprice,
           event.year,
          event.photo
        );
        emit(CreateBuyBlocLoaded());
      } catch (e) {
        emit(CreateBuyBlocError());
      }
    });
  }
}
