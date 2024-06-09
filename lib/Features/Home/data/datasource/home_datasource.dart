import 'package:aviz_application/Di/di.dart';
import 'package:aviz_application/Exception/api_exception.dart';
import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:dio/dio.dart';

abstract class IHomeDataSource {
  Future<List<Promotaions>> getHotestPromotaionList();
}

class HomeDataSourceRemote extends IHomeDataSource {
  final Dio dio;

  HomeDataSourceRemote({required this.dio});

  @override
  Future<List<Promotaions>> getHotestPromotaionList() async {
    try {
      Map<String, String> qparam = {"filter": "is_hotest=true"};
      var response = await dio.get("collections/promotaion/records",
          queryParameters: qparam);

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
