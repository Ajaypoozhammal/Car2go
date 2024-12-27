import 'dart:convert';
import 'package:drive_to_go/Repository/Api/Api%20client.dart';
import 'package:drive_to_go/Repository/ModelClass/GetallbyModelclass.dart';
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
}