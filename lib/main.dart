import 'package:calculator_getx/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: Calculator(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        textTheme: TextTheme(
            bodyMedium: TextStyle(fontSize: 35, color: Colors.black))),
  ));
}
