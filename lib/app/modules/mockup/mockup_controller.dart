import 'package:flutter_pattern/app/modules/mockup/mockup_repository.dart';
import 'package:get/get.dart';

class MockupController extends GetxController {
  
  final RamdomGifRepository _repository;
  String _randomGif = "";
  String get randomGif => _randomGif;

  MockupController(this._repository);

  @override
  void onReady() {
    _init();
  }

  Future<void> _init() async {
    try {
     _randomGif = await _repository.newRequestedToGif();
     update();
    } catch (e) {
      print(e);
    }
  }
}
