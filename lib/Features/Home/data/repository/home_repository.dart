
import 'package:aviz/Exception/api_exception.dart';
import 'package:aviz/Features/Home/data/datasource/home_datasource.dart';
import 'package:aviz/Features/Home/data/models/promotions_model.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<String, List<Promotion>>> getHotestPromotaionList();
  Future<Either<String, List<Promotion>>> getNormailPromoationList();
}

class HomeRepository extends IHomeRepository {
  final IHomeDataSource dataSource;

  HomeRepository({required this.dataSource});

  @override
  Future<Either<String, List<Promotion>>> getHotestPromotaionList() async {
    try {
      var response = await dataSource.getHotestPromotaionList();

      return Right(response);
    } on ApiException catch (ex) {
      return Left(ex.message);
    }
  }

  @override
  Future<Either<String, List<Promotion>>> getNormailPromoationList() async {
    try {
      var response = await dataSource.getNormailPromoationList();

      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message);
    }
  }
}
