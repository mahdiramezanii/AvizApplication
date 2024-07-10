import 'package:aviz_application/Exception/api_exception.dart';
import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:aviz_application/Features/search/data/datasource/search_datasorce.dart';
import 'package:dartz/dartz.dart';

abstract class ISerachRepository {

  Future<Either<String,List<Promotion>>> getResultSerach(String query);

}

class SerachRepository extends ISerachRepository{

  final ISearchDataSource dataSource;

  SerachRepository({required this.dataSource});
  @override
  Future<Either<String, List<Promotion>>> getResultSerach(String query) async {

    try{

      var response=await dataSource.getResultSerach(query);

      return Right(response);
    } on ApiException catch(ex){

      return Left(ex.message ?? "خطا محتوی متنی ندارد");
    }
    
  }


  
}