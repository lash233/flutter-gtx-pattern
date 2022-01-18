
import 'package:flutter_pattern/app/data/providers/gif_api.dart';
import 'package:flutter_pattern/app/modules/mockup/mockup_controller.dart';
import 'package:flutter_pattern/app/modules/mockup/mockup_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MockupBinding extends Bindings {
  @override
  void dependencies() {
    final dio = Dio(BaseOptions(baseUrl: "https://g.tenor.com/v1"));
    final api = GifAPI(dio);
    final repository = RamdomGifRepository(api);
    Get.lazyPut(() => MockupController(repository));
  }
}