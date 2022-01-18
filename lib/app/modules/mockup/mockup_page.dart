import 'package:flutter_pattern/app/modules/mockup/mockup_controller.dart';
import 'package:flutter_pattern/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MockupPage extends StatelessWidget {
  const MockupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MockupController>(
      builder: (_) => Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Image.network(_.randomGif),
              TextButton(
                onPressed: () {
                  Get.offNamed(AppRoutes.SPLASH);
                },
                child: Text("Back to splash"),
              )
            ],
          ) ,
        ),
      ),
    );
  }
}
