
import 'package:aviz/Features/Home/bloc/home_bloc.dart';
import 'package:aviz/Features/Home/data/datasource/home_datasource.dart';
import 'package:aviz/Features/Home/data/repository/home_repository.dart';
import 'package:aviz/Features/search/data/datasource/search_datasorce.dart';
import 'package:aviz/Features/search/data/repository/serach_repository.dart';
import 'package:aviz/NetworkUtil/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.I;

Future<void> initLocator() async {
  
  locator.registerSingleton<Dio>(DioPriovider.createDio());

  locator.registerFactory<IHomeDataSource>(
      () => HomeDataSourceRemote(dio: locator.get()));

  locator.registerFactory<IHomeRepository>(
      () => HomeRepository(dataSource: locator.get()));

  locator.registerFactory<ISearchDataSource>(() => SearchRemoteDataSource(dio: locator.get()));

  locator.registerFactory<ISerachRepository>(() => SerachRepository(dataSource: locator.get()));


      locator.registerSingleton<HomeBloc>(HomeBloc(repository: locator.get()));

}
