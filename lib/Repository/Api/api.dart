import 'dart:convert';
import 'package:drive_to_go/Repository/Api/Api%20client.dart';
import 'package:drive_to_go/Repository/ModelClass/DeleteRentModel.dart';
import 'package:drive_to_go/Repository/ModelClass/DeleteSellModel.dart';
import 'package:drive_to_go/Repository/ModelClass/GetallbyModelclass.dart';
import 'package:drive_to_go/Repository/ModelClass/RentAllModel.dart';
import 'package:http/http.dart';




class GetallbyApi {
  ApiClient apiClient = ApiClient();


  Future<List<GetallbyModelclass>> getallby() async {
    String trendingpath = 'http://45.159.221.50:8868/api/get-buyvehicles';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    return GetallbyModelclass.listFromJson(jsonDecode(response.body));
  }

  Future < DeleteSellModel> getDeletesell(String id) async {
    String trendingpath = 'http://45.159.221.50:8868/api/delete-buyvehicle/$id';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'DELETE', body);

    return DeleteSellModel.fromJson(jsonDecode(response.body));
  }


  Future<List<RentAllModel>> rentallby() async {
    String trendingpath = 'http://45.159.221.50:8868/api/get-vehicles';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    return RentAllModel.listFromJson(jsonDecode(response.body));
  }

  Future < DeleteRentModel> getDeleteRent(String id) async {
    String trendingpath = 'http://45.159.221.50:8868/api/delete-vehicle/$id';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'DELETE', body);

    return DeleteRentModel.fromJson(jsonDecode(response.body));
  }
}
