import 'package:flutter_pattern/app/data/providers/gif_api.dart';

class RamdomGifRepository {
  final GifAPI _api;
  RamdomGifRepository(this._api);

  Future<String> newRequestedToGif() async => _api.requestRandomGif();
}
