import 'package:aviz_application/Features/Home/bloc/home_bloc.dart';
import 'package:aviz_application/Features/Home/data/datasource/home_datasource.dart';
import 'package:aviz_application/Features/Home/data/repository/home_repository.dart';
import 'package:aviz_application/NetworkUtil/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.I;

Future<void> initLocator() async {
  
  locator.registerSingleton<Dio>(DioPriovider.createDio());

  locator.registerFactory<IHomeDataSource>(
      () => HomeDataSourceRemote(dio: locator.get()));

  locator.registerFactory<IHomeRepository>(
      () => HomeRepository(dataSource: locator.get()));


      locator.registerSingleton<HomeBloc>(HomeBloc(repository: locator.get()));

}
