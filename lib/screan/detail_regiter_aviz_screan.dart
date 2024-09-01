
import 'package:aviz/constant/colors.dart';
import 'package:aviz/screan/detail_aviz_screan.dart';
import 'package:aviz/widgets/app_bar.dart';
import 'package:aviz/widgets/category_horizontal_widgets.dart';
import 'package:aviz/widgets/horizontal_row_title.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DetailRegisterAvizScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greyBase,
      appBar: AvizAppBar(title: "جزئیات آویز"),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: HorizontalRowItemTitle(
                  image: "camera.png", titile: "تصویر آویز"),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                strokeWidth: 1,
                color: MyColors.grey400,
                dashPattern: const [8, 4],
                child: SizedBox(
                  height: 160,
                  width: 350,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "لطفا تصویر آویز خود را بارگذاری کنید",
                          style: TextStyle(
                            color: MyColors.grey500,
                            fontFamily: "sb",
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: MyColors.PrimaryBase,
                              maximumSize: const Size(200, 40),
                              minimumSize: const Size(150, 40)),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "انتخاب تصویر",
                                style: TextStyle(
                                  color: MyColors.greyBase,
                                  fontFamily: "sb",
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Image(
                                  image: AssetImage(
                                      "assets/images/document-upload.png"))
                            ],
                          ),
                        )
                      ],
                    ),
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
              child: HorizontalRowItemTitle(
                image: "edit.png",
                titile: "عنوان آویز",
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "عنوان آویز را وارد  کنید",
                    hintStyle: TextStyle(
                      color: MyColors.grey500,
                      fontFamily: "sm",
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        width: 1,
                        color: MyColors.PrimaryBase,
                      ),
                    ),
                    fillColor: MyColors.grey100,
                    filled: true,
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
              child: HorizontalRowItemTitle(
                image: "clipboard-text.png",
                titile: "توضیحات آویز",
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            sliver: SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "توضیحات آویز را وارد کنید ...",
                    hintStyle: TextStyle(
                      color: MyColors.grey500,
                      fontFamily: "sm",
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        width: 1,
                        color: MyColors.PrimaryBase,
                      ),
                    ),
                    fillColor: MyColors.grey100,
                    filled: true,
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: SwitchCategoryHorizontal(
                switichValue: false,
                title: "فعال کردن گفتگو",
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: SwitchCategoryHorizontal(
                switichValue: true,
                title: "فعال کردن تماس",
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.PrimaryBase,
                  // maximumSize: Size(400, 100),
                  minimumSize: const Size(343, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailAvizScrean();
                      },
                    ),
                  );
                },
                child: Text(
                  "ثبت آکهی",
                  style: TextStyle(
                    color: MyColors.greyBase,
                    fontFamily: "sm",
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
