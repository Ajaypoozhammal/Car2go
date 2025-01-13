import 'package:bloc/bloc.dart';
import 'package:drive_to_go/Repository/ModelClass/CreateRentModel.dart';
import 'package:meta/meta.dart';

import '../../../Repository/Api/api.dart';

part 'create_rent_event.dart';
part 'create_rent_state.dart';

class CreateRentBloc extends Bloc<CreateRentEvent, CreateRentState> {
  late CreaterentModel createrentModel;
  GetallbyApi getallbyApi = GetallbyApi();
  CreateRentBloc() : super(CreateRentInitial()) {
    on<FetchCreateRent>((event, emit)async{
      emit(CreateRentBlocLoading());
      try {
        createrentModel = await getallbyApi.getCreaterent(
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
        emit(CreateRentBlocLoaded());
      } catch (e) {
        emit(CreateRentBlocError());
      }    });
  }
}
