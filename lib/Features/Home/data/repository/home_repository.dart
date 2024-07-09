import 'package:aviz_application/Exception/api_exception.dart';
import 'package:aviz_application/Features/Home/data/datasource/home_datasource.dart';
import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<String, List<Promotion>>> getHotestPromotaionList();
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
}
