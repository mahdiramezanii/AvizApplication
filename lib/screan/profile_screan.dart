import 'package:aviz_application/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greyBase,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.greyBase,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
                scale: 1.7,
                child:
                    const Image(image: AssetImage("assets/images/myAviz.png"))),
            const SizedBox(
              width: 30,
            ),
            Transform.scale(
                scale: 1.7,
                child:
                    const Image(image: AssetImage("assets/images/avizl.png"))),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      hintText: "جستجو...",
                      hintStyle:
                          TextStyle(color: MyColors.grey400, fontFamily: "sb"),
                      prefixIcon:
                          Image.asset("assets/images/search-normal.png"),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: MyColors.grey400,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: MyColors.PrimaryBase))),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "حساب کاربری",
                    style: TextStyle(
                      fontFamily: "sb",
                      fontSize: 18,
                      color: MyColors.grey700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(image: AssetImage("assets/images/profile.png")),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: MyColors.grey400,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(image: AssetImage("assets/images/edit2.png")),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "سید محمد جواد هاشمی",
                            style: TextStyle(
                              color: MyColors.grey700,
                              fontFamily: "sm",
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: MyColors.PrimaryBase,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    "تایید شده",
                                    style: TextStyle(
                                      color: MyColors.greyBase,
                                      fontFamily: "sm",
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "۰۹۱۱۷۵۴۰۱۴۵",
                                style: TextStyle(
                                  color: MyColors.grey700,
                                  fontFamily: "sm",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Image(image: AssetImage("assets/images/p.png")),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  HorizontalRow(titile: "آگهی های من", icon: "note-2.png"),
                  HorizontalRow(titile: "پرداخت های من", icon: "card.png"),
                  HorizontalRow(titile: "بازدید های اخیر", icon: "eye.png"),
                  HorizontalRow(titile: "ذحیره شده ها", icon: "save-2.png"),
                  HorizontalRow(titile: "تنظیمات", icon: "setting.png"),
                  HorizontalRow(
                      titile: "پشتیبانی و قوانین",
                      icon: "message-question.png"),
                  HorizontalRow(titile: "درباره آویز", icon: "info-circle.png"),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    "نسخه",
                    style: TextStyle(
                      color: MyColors.grey500,
                      fontFamily: "sm",
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "1.5.9",
                    style: TextStyle(
                      color: MyColors.grey500,
                      fontFamily: "sm",
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget HorizontalRow({required String titile, required String icon}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: 350,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: MyColors.grey400)),
        child: Center(
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/shift-left.png",
                color: MyColors.grey500,
              ),
              const Spacer(),
              Text(
                titile,
                style: TextStyle(
                  color: MyColors.grey700,
                  fontFamily: "sb",
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Image.asset("assets/images/${icon}"),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
