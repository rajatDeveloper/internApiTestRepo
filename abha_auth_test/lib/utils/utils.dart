import 'package:flutter/material.dart';

class Utils {
  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: const Color.fromARGB(255, 16, 51, 69),
        content: Text(message)));
  }
}
