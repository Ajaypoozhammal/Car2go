import 'dart:convert';

import 'package:drive_to_go/Repository/API/Api%20Client.dart';
import 'package:drive_to_go/Repository/Model%20Class/RentAddModelClass.dart';
import 'package:http/http.dart';

class Addapi {
  ApiClient apiClient = ApiClient();


  Future<RentAddModelClass> getRentAdd() async {
    String trendingpath = 'http://45.159.221.50:8868/api/add-vehicle';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', body);

    return RentAddModelClass.fromJson(jsonDecode(response.body));
  }
}