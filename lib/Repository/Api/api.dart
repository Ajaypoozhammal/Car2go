import 'dart:convert';
import 'package:drive_to_go/Repository/Api/Api%20client.dart';
import 'package:drive_to_go/Repository/ModelClass/CreateBuyModel.dart';
import 'package:drive_to_go/Repository/ModelClass/CreateRentModel.dart';
import 'package:drive_to_go/Repository/ModelClass/DeleteRentModel.dart';
import 'package:drive_to_go/Repository/ModelClass/DeleteSellModel.dart';
import 'package:drive_to_go/Repository/ModelClass/GetallbyModelclass.dart';
import 'package:drive_to_go/Repository/ModelClass/RentAllModel.dart';
import 'package:http/http.dart';

class GetallbyApi {
  ApiClient apiClient = ApiClient();

  Future<List<GetallbyModelclass>> getallby() async {
    String trendingpath = 'http://45.159.221.50:8868/api/get-buyvehicles';
    var body = {};
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    return GetallbyModelclass.listFromJson(jsonDecode(response.body));
  }

  Future<DeleteSellModel> getDeletesell(String id) async {
    String trendingpath = 'http://45.159.221.50:8868/api/delete-buyvehicle/$id';
    var body = {};
    Response response = await apiClient.invokeAPI(trendingpath, 'DELETE', body);

    return DeleteSellModel.fromJson(jsonDecode(response.body));
  }

  Future<List<RentAllModel>> rentallby() async {
    String trendingpath = 'http://45.159.221.50:8868/api/get-vehicles';
    var body = {};
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    return RentAllModel.listFromJson(jsonDecode(response.body));
  }

  Future<DeleteRentModel> getDeleteRent(String id) async {
    String trendingpath = 'http://45.159.221.50:8868/api/delete-vehicle/$id';
    var body = {};
    Response response = await apiClient.invokeAPI(trendingpath, 'DELETE', body);

    return DeleteRentModel.fromJson(jsonDecode(response.body));
  }

  Future<CreateBuyModel> getCreateBuy(
      {required String brand,
      required String model,
      required List<String> photos,
      required String description,
      required String gearType,
      required String vehicleColor,
      required int rentPrice,
      required int mileage,
      required int noOfSeats,
      required double rating,
      required int noOfDoors,
      required String ownerName,
      required String ownerPhoneNumber,
      required String ownerPlace,
      required String location,
      required String latitude,
      required String longitude,
      required String fuelType}) async {
    String trendingpath = 'http://45.159.221.50:9890/api/signup';
    print(trendingpath);
    var body = {
      "brand": brand,
      "model": model,
      "description": description,
      "rentPrice": rentPrice,
      "mileage": mileage,
      "photos": [photos],
      "vehicleColor": vehicleColor,
      "gearType": gearType,
      "fuelType": fuelType,
      "noOfSeats": noOfSeats,
      "rating": rating,
      "noOfDoors": noOfDoors,
      "ownerName": ownerName,
      "ownerPhoneNumber": ownerPhoneNumber,
      "ownerPlace": ownerPlace,
      "location": {
        "type": "Point",
        "coordinates": [double.parse(latitude), double.parse(longitude)]
      },
      "available": true,
      "latestModel": true,
      "highMilage": false
    };
    print('hello' + body.toString());
    Response response =
        await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    print(response.body);
    return CreateBuyModel.fromJson(jsonDecode(response.body));
  }
  Future<CreaterentModel> getCreaterent(
      {required String brand,
        required String model,
        required List<String> photos,
        required String description,
        required String gearType,
        required String vehicleColor,
        required int rentPrice,
        required int mileage,
        required int noOfSeats,
        required double rating,
        required int noOfDoors,
        required String ownerName,
        required String ownerPhoneNumber,
        required String ownerPlace,
        required String location,
        required String latitude,
        required String longitude,
        required String fuelType}) async {
    String trendingpath = 'http://45.159.221.50:8868/api/add-vehicle';
    print(trendingpath);
    var body = {
      "brand": brand,
      "model": model,
      "description": description,
      "rentPrice": rentPrice,
      "mileage": mileage,
      "photos": [photos],
      "vehicleColor": vehicleColor,
      "gearType": gearType,
      "fuelType": fuelType,
      "noOfSeats": noOfSeats,
      "rating": rating,
      "noOfDoors": noOfDoors,
      "ownerName": ownerName,
      "ownerPhoneNumber": ownerPhoneNumber,
      "ownerPlace": ownerPlace,
      "location": {
        "type": "Point",
        "coordinates": [double.parse(latitude), double.parse(longitude)]
      },
      "available": true,
      "latestModel": true,
      "highMilage": false
    };
    print('hello' + body.toString());
    Response response =
    await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    print(response.body);
    return CreaterentModel.fromJson(jsonDecode(response.body));
  }
}
