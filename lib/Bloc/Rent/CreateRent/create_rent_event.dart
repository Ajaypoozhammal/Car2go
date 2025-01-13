part of 'create_rent_bloc.dart';

@immutable
sealed class CreateRentEvent {}
class FetchCreateRent extends CreateRentEvent {
  final String brand;
  final String model;
  final double rating;
  final int year;
  final String description;
  final int mileage;
  final int rentprice;
  final String geartype;
  final String fueltype;
  final int noOfSeats;
  final int numberofdoors;
  final String ownername;
  final String ownerphoneNumber;
  final String ownerplace;
  final String location;
  final List<String> photo;
  final String latitude;
  final String longitude;
  final String vehicleColor;

  FetchCreateRent({
    required this.brand,
    required this.latitude,
    required this.longitude,
    required this.photo,
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
    required this.location,
    required this.vehicleColor,
  });
}
