import 'package:aviz_application/constant/string_constant.dart';

class Promotaions {
  String title;
  String description;
  int price;
  String image;

  Promotaions({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory Promotaions.fromJson(Map<String, dynamic> jsonObject) {
    return Promotaions(
      title: jsonObject["title"],
      price: jsonObject["price"],
      description: jsonObject["decription"],
      image:
          "${StringConstant.baseUrl}files/${jsonObject["collectionId"]}/${jsonObject["id"]}/${jsonObject["image"]}",
    );
  }
}
