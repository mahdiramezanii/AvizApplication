import 'package:aviz/constant/string_constant.dart';
import 'package:dio/dio.dart';

class DioPriovider {
  static Dio createDio() {
    return Dio(BaseOptions(baseUrl: StringConstant.baseUrl));
  }
}
