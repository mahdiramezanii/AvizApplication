import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/screan/category_screan.dart';
import 'package:flutter/material.dart';

class RegisterAvizScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      
        backgroundColor: MyColors.greyBase,
        automaticallyImplyLeading: false,
        surfaceTintColor:MyColors.greyBase ,
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
          const SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "انتخاب دسته بندی آویز",
                    style: TextStyle(
                      fontFamily: "sb",
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(image: AssetImage("assets/images/category.png")),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "محدوده ملک",
                    style: TextStyle(
                      color: MyColors.grey500,
                      fontFamily: "sb",
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  Text(
                    "دسته بندی",
                    style: TextStyle(
                      color: MyColors.grey500,
                      fontFamily: "sm",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      color: MyColors.grey100,
                    ),
                    child: Center(
                      child: Text(
                        "خیابان صیاد شیرازی",
                        style: TextStyle(
                          color: MyColors.grey400,
                          fontFamily: "sm",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      color: MyColors.grey100,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Image(
                              image:
                                  AssetImage("assets/images/arrow-down.png")),
                          Text(
                            "فروش آپارتمان",
                            style: TextStyle(
                              fontFamily: "sm",
                              fontSize: 16,
                              color: MyColors.grey700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Divider(
                color: MyColors.grey300,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "ویژگی ها",
                    style: TextStyle(
                        color: MyColors.grey700,
                        fontFamily: "sb",
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(image: AssetImage("assets/images/clipboard.png")),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: Wrap(
                alignment: WrapAlignment.end,
                children: [
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                  PropertiyItemWidget(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "امکانات",
                    style: TextStyle(
                      color: MyColors.grey700,
                      fontFamily: "sb",
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(image: AssetImage("assets/images/magicpen.png")),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: MyColors.red3,
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}

class PropertiyItemWidget extends StatelessWidget {
  const PropertiyItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "متراژ",
            style: TextStyle(
              color: MyColors.grey500,
              fontFamily: "sm",
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 160,
            height: 50,
            decoration: BoxDecoration(
              color: MyColors.grey100,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/images/Polygon_up.png",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                        image: AssetImage(
                          "assets/images/Polygon_down.png",
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "350",
                    style: TextStyle(
                      fontFamily: "sm",
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
