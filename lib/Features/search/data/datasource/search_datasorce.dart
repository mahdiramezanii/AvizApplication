import 'package:aviz_application/Exception/api_exception.dart';
import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dio/dio.dart';

abstract class ISearchDataSource {


  Future<List<Promotion>> getResultSerach(String query);


}


class SearchRemoteDataSource extends ISearchDataSource{

  final Dio dio;

  SearchRemoteDataSource({required this.dio});


  @override
  Future<List<Promotion>> getResultSerach(String query) async {

    try{

      Map<String, dynamic> qparam = {'filter': 'name~"$query"'};

      var response= await dio.get("'collections/promotion/records'",queryParameters: qparam,);

      return response.data["items"].map<Promotion>((jsonObject){

        return Promotion.fromJson(jsonObject);
      }).toLits();

    } on DioException catch(ex){

      throw ApiException(code: ex.response!.statusCode!, message: ex.response!.data["message"]);
    } catch (ex){

      throw ApiException(code: 0, message: "خطا محتوای متنی ندارد");
    }
    
  }

  
}