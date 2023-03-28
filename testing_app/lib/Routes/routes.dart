
import 'package:flutter/material.dart';
import 'package:testing_app/Routes/routes_name.dart';
import 'package:testing_app/view/my_phonNum_view.dart';
import 'package:testing_app/view/otp_view.dart';

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
