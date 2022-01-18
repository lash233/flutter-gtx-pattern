import 'package:flutter_pattern/app/modules/mockup/mockup_binding.dart';
import 'package:flutter_pattern/app/modules/mockup/mockup_page.dart';
import 'package:flutter_pattern/app/modules/splash/splash_binding.dart';
import 'package:flutter_pattern/app/modules/splash/splash_page.dart';
import 'package:flutter_pattern/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBindings()
    ),
    GetPage(
      name: AppRoutes.MOCKUP,
      page: () => MockupPage(),
      binding: MockupBinding()
    )
  ];
}
