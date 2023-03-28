import 'package:abha_auth_test/repository/abha_auth.dart';
import 'package:abha_auth_test/utils/utils.dart';
import 'package:flutter/cupertino.dart';

class AuthViewModel {
  static final _myRepo = AbhaAuthMethod();

  static Future<void> loginApi(dynamic data, BuildContext context) async {
    _myRepo
        .loginApi(data)
        .then((value) =>
            {Utils.snackBar(value.toString(), context), print(value)})
        .onError(
            (error, stackTrace) => Utils.snackBar(error.toString(), context));
  }
}
