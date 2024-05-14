import 'package:aviz_application/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "دسته بندی آویز",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ProgressBar(),
          const SizedBox(
            height: 40,
          ),
           Center(
            child: VerticalCategoryItem(title: "فروش مسکونی",),
          ),
          const SizedBox(
            height: 10,
          ),
           Center(
            child: VerticalCategoryItem(title: "پروژه های ساخت و ساز",),
          ),
          const SizedBox(
            height: 10,
          ),
           Center(
            child: VerticalCategoryItem(title: "اجاره دفاتر اداری و تجاری",),
          ),
          const SizedBox(
            height: 10,
          ),
           Center(
            child: VerticalCategoryItem(title: "فروش مسکونی",),
          ),
          const SizedBox(
            height: 10,
          ),
           Center(
            child: VerticalCategoryItem(title: "فروش دفاتر اداری و تجاری",),
          ),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.red3,
      height: 5,
      width: 40,
    );
  }
}

class VerticalCategoryItem extends StatelessWidget {
  String title;
  VerticalCategoryItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 3,
          color: MyColors.grey200,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: const AssetImage("assets/images/shift-left.png"),
              color: MyColors.red3,
            ),
            Text(
              title,
              style: TextStyle(
                color: MyColors.grey700,
                fontFamily: "sb",
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
