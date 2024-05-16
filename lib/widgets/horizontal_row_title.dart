import 'package:aviz_application/constant/colors.dart';
import 'package:flutter/material.dart';

Widget HorizontalRowItemTitle({required String titile, required String image}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        titile,
        style: TextStyle(
          color: MyColors.grey700,
          fontFamily: "sb",
          fontSize: 18,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Image(image: AssetImage("assets/images/$image"))
    ],
  );
}
