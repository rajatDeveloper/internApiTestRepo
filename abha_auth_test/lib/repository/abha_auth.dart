import 'package:abha_auth_test/constants/url.dart';
import 'package:abha_auth_test/network/BaseApiServices.dart';
import 'package:abha_auth_test/network/NetworkApiServices.dart';
import 'package:http/http.dart' as http;

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
