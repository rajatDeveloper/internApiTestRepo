import 'package:abha_auth_test/Routes/routes_name.dart';
import 'package:abha_auth_test/view/my_phonNum_view.dart';
import 'package:abha_auth_test/view/otp_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.abhaMobileRoute:
        return MaterialPageRoute(builder: (BuildContext context) => MyPhone());

      case RoutesName.otpRoute:
        return MaterialPageRoute(builder: (BuildContext context) => MyVerify());

      default:
        return MaterialPageRoute(builder: ((_) {
          return const Scaffold(
            body: Center(child: Text("No Screen Error")),
          );
        }));
    }
  }
}
