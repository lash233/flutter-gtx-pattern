import 'package:flutter_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  answerMethod() {
    print("Parker...?");
    Get.offNamed(AppRoutes.MOCKUP);
  }
}
