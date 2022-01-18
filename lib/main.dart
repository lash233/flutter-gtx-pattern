import 'package:flutter/material.dart';
import 'package:flutter_pattern/app/modules/splash/splash_binding.dart';
import 'package:flutter_pattern/app/modules/splash/splash_page.dart';
import 'package:flutter_pattern/app/routes/app_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Grido Mockup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      initialBinding: SplashBindings(),
      getPages: AppPages.pages,
    );
  }
}
