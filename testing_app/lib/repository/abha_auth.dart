
import 'package:http/http.dart' as http;
import 'package:testing_app/network/BaseApiServices.dart';
import 'package:testing_app/network/NetworkApiServices.dart';
import 'package:testing_app/res/urls.dart';

class AbhaAuthMethod {
  BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      var url = AppUrl.baseUrl + AppUrl.loginWithMobileAbhaEndPoint;
      dynamic response = await _apiServices.getPostApiResponse(url, data);

      return response;
    } catch (e) {
      print(e.toString());
    }
  }
}
