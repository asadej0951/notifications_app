import 'package:flutter/material.dart';
import 'package:notifications_app/ui/ButtonRegister.dart';
import 'package:notifications_app/ui/Home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  var message = "Welcome";
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Home(),
   );
  }
}
