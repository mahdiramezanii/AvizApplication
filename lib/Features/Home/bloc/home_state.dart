import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeState {}

class initialHomeState extends HomeState {}

class LoadingHomeSatet extends HomeState {}

class ResponseHomeState extends HomeState {
  Either<String, List<Promotaions>> promotopanList;

  ResponseHomeState({required this.promotopanList});
}
