import 'package:flutter/material.dart';
import 'package:testing_app/Routes/routes.dart';
import 'package:testing_app/view/my_phonNum_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPhone(),
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
