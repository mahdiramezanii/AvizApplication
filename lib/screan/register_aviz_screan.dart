import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/screan/category_screan.dart';
import 'package:flutter/material.dart';

class RegisterAvizScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(image: AssetImage("assets/images/close.png")),
                  Text(
                    "ثبت آویز",
                    style: TextStyle(
                      fontFamily: "sb",
                      color: MyColors.red3,
                    ),
                  ),
                  const Image(
                    image: AssetImage("assets/images/shift-right.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "انتخاب دسته بندی آویز",
                  style: TextStyle(
                    fontFamily: "sb",
                    fontSize: 16,
                  ),
                ),
                Image(image: AssetImage("assets/images/category.png")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
