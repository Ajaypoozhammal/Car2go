part of 'create_buy_bloc.dart';

@immutable
sealed class CreateBuyEvent {}

class FetchCreateBuy extends CreateBuyEvent {
  final String brand;
  final String model;
  final String rating;
  final String year;
  final String description;
  final String mileage;
  final String rentprice;
  final String geartype;
  final String fueltype;
  final String noOfSeats;
  final String numberofdoors;
  final String ownername;
  final String ownerphoneNumber;
  final String ownerplace;
  final String location;
  final String photo;

  FetchCreateBuy(this.photo,
      {required this.brand,
      required this.model,
      required this.rating,
      required this.year,
      required this.description,
      required this.mileage,
      required this.rentprice,
      required this.geartype,
      required this.fueltype,
      required this.noOfSeats,
      required this.numberofdoors,
      required this.ownername,
      required this.ownerphoneNumber,
      required this.ownerplace,
      required this.location});
}
