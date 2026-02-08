import 'package:flutter/material.dart';
import 'package:get_x/get_navigation/src/root/get_material_app.dart';
import 'package:hehehe/pages/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}