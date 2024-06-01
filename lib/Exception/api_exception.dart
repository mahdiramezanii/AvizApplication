import 'package:dio/dio.dart';

class ApiException {
  int code;
  String message;
  Response? response;

  ApiException({required this.code, required this.message,this.response});
}
