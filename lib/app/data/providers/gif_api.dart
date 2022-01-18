import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_pattern/app/core/utils/constants.dart';

class GifAPI {
  final Dio _dio;
  GifAPI(this._dio);

  Future<String> requestRandomGif() async {
    final Response response = await _dio.get(
      "/random",
      queryParameters: {
        "key": Constants.GIF_API_KEY,
        "q": "Peter Parker",
        "limit": 10
      }
    );
  final index = new Random();
  final res = response.data['results'][index.nextInt(10)]["media"][0]["gif"]["url"];
  print(res);
  return res;
  }
}
