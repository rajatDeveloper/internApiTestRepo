import 'package:abha_auth_test/constants/url.dart';
import 'package:abha_auth_test/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var url = AppUrl.baseUrl + AppUrl.loginWithMobileAbhaEndPoint;
                  Map data = {"mobile": "8607749965"};
                  http.Response response = await http.post(
                    Uri.parse(url),
                    body: data,
                  );
                  Utils.snackBar(response.body, context);
                },
                child: const Text("Get otp"))
          ],
        )),
      ),
    );
  }
}
