import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeState {}

class initialHomeState extends HomeState {}

class LoadingHomeSatet extends HomeState {}

class ResponseHomeState extends HomeState {
  Either<String, List<Promotion>> promotopanList;
  Either<String,List<Promotion>> normalPromotaion;

  ResponseHomeState({required this.promotopanList,required this.normalPromotaion});
}
