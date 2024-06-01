import 'package:dio/dio.dart';

class DioPriovider {
  static Dio createDio() {
    return Dio(BaseOptions(baseUrl: "https://aviz.liara.run/api/"));
  }
}
