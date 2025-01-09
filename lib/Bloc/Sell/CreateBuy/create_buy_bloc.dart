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
            brand: event.brand,
            model: event.model,
            photos: event.photo,
            description: event.description,
            gearType: event.geartype,
            vehicleColor: event.vehicleColor,
            rentPrice: event.rentprice,
            mileage: event.mileage,
             noOfSeats: event.noOfSeats,
            rating: event.rating,
            noOfDoors: event.numberofdoors,
            ownerName: event.ownername,
            ownerPhoneNumber: event.ownerphoneNumber,
            ownerPlace: event.ownerplace,
            location: event.location,
            latitude: event.latitude,
            longitude: event.longitude,
            fuelType: event.fueltype,
           );
        emit(CreateBuyBlocLoaded());
      } catch (e) {
        emit(CreateBuyBlocError());
      }
    });
  }
}
