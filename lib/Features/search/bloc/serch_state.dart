import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dartz/dartz.dart';

abstract class SerachState {}


class InitialSerachState extends SerachState{}

class LoadingSerachState extends SerachState{}

class ResponseSerchState extends SerachState{

  Either<String,List<Promotion>> promotioan_serch_result;

  ResponseSerchState({required this.promotioan_serch_result});


}