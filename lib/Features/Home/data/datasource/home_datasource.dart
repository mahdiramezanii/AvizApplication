import 'package:aviz_application/Di/di.dart';
import 'package:aviz_application/Exception/api_exception.dart';
import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dio/dio.dart';

abstract class IHomeDataSource {
  Future<List<Promotaions>> getPromotaionList();
}

class HomeDataSourceRemote extends IHomeDataSource {
  Dio _dio = locator.get();

  @override
  Future<List<Promotaions>> getPromotaionList() async {
    try {
      var response = await _dio.get("collections/promotaion/records");

      return response.data["items"].map<Promotaions>((jsonObject) {
        return Promotaions.fromJson(jsonObject);
      }).toList();
    } on DioException catch (ex) {
      throw ApiException(
        code: ex.response!.statusCode!,
        message: ex.response!.data["message"],
      );
    } catch (ex) {
      throw ApiException(code: 0, message: "خطا محتوای متنی ندارد");
    }
  }
}
