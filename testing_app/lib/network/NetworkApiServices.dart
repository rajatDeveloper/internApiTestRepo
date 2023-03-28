import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:testing_app/network/BaseApiServices.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJSon;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      //save data to resjson var
      responseJSon = returnResponse(response);
    } catch (e) {
      print(e.toString());
    }
    return responseJSon;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJSon;
    try {
      http.Response response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(Duration(seconds: 10));
      //save data to resjson var
      responseJSon = returnResponse(response);
    } catch (e) {
      print(e.toString());
    }
    return responseJSon;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        return {"success": false};
    }
  }
}
