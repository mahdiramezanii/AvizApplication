import 'package:aviz_application/NetworkUtil/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.I;

Future<void> initLocator() async {
  locator.registerSingleton<Dio>(DioPriovider.createDio());
}
