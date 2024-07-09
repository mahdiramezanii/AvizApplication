import 'package:aviz_application/Exception/api_exception.dart';
import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dio/dio.dart';

abstract class IHomeDataSource {
  Future<List<Promotion>> getHotestPromotaionList();
  Future<List<Promotion>> getNormailPromoationList();
}

class HomeDataSourceRemote extends IHomeDataSource {
  final Dio dio;

  HomeDataSourceRemote({required this.dio});

  @override
  Future<List<Promotion>> getHotestPromotaionList() async {
    try {
      Map<String, String> qparam = {"filter": "is_hot=true"};
      var response = await dio.get("collections/promotion/records",
          queryParameters: qparam);

      return response.data["items"].map<Promotion>((jsonObject) {
        return Promotion.fromJson(jsonObject);
      }).toList();
    } on DioException catch (ex) {
      throw ApiException(
          code: ex.response!.statusCode!,
          message: ex.response!.data["message"]);
    } catch (ex) {
      throw ApiException(
        code: 0,
        message: ex.toString(),
      );
    }
  }

  @override
  Future<List<Promotion>> getNormailPromoationList() async {
    try {
      Map<String, String> qparam = {"filter": "is_hot=false"};
      var response = await dio.get("collections/promotion/records",
          queryParameters: qparam);

      return response.data["items"].map<Promotion>((jsonObject) {
        return Promotion.fromJson(jsonObject);
      }).toList();
    } on DioException catch (ex) {
      throw ApiException(
          code: ex.response!.statusCode!,
          message: ex.response!.data["message"]);
    } catch (ex) {
      throw ApiException(code: 0, message: "خطا محتوی متنی ندارد");
    }
  }
}
