import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/widgets/horizontal_row_title.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailAvizScrean extends StatefulWidget {
  @override
  State<DetailAvizScrean> createState() => _DetailAvizScreanState();
}

class _DetailAvizScreanState extends State<DetailAvizScrean> {
  int _selectedIndex = 0;
  bool _isShowInformatopn = false;
  bool _isShowPrice = false;
  bool _isShowProperties = false;
  bool _isShowDescription = false;
  List<String> titleHorizontalBadgeWidget = [
    "مشخصات",
    "قیمت",
    "ویژگی ها و امکانات",
    "توضیحات"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greyBase,
      appBar: AppBar(
        backgroundColor: MyColors.greyBase,
        automaticallyImplyLeading: false,
        actions: const [
          SizedBox(
            width: 15,
          ),
          Image(image: AssetImage("assets/images/archive.png")),
          SizedBox(
            width: 20,
          ),
          Image(image: AssetImage("assets/images/share.png")),
          SizedBox(
            width: 20,
          ),
          Image(image: AssetImage("assets/images/information.png")),
          Spacer(),
          Image(image: AssetImage("assets/images/shift-right.png")),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Image(image: AssetImage("assets/images/h3.png")),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "۱۶ دقیقه پیش در گرگان",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: MyColors.grey500,
                      fontFamily: "sm",
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColors.grey200,
                    ),
                    child: Center(
                      child: Text(
                        "آپارتمان",
                        style: TextStyle(
                          color: MyColors.PrimaryBase,
                          fontFamily: "sm",
                          fontSize: 14,
                        ),
                      ),
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
              child: Text(
                "آپارتمان ۵۰۰ متری در صیاد شیرازی",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: MyColors.grey700,
                  fontFamily: "sb",
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 15),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.grey100,
                    border: Border.all(
                      width: 1,
                      color: MyColors.grey300,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/shift-left.png",
                      color: MyColors.grey500,
                    ),
                    Text(
                      "  هشدار های قبل از معامله!",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: MyColors.grey700,
                        fontFamily: "sm",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            sliver: SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: titleHorizontalBadgeWidget.length,
                    itemBuilder: (context, index) {
                      return HorizontalBadgeWidget(
                          index, titleHorizontalBadgeWidget[index]);
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            sliver: SliverToBoxAdapter(
              child: Visibility(
                visible: _isShowInformatopn,
                child: Column(
                  children: [
                    HorizontalRowItemTitle(
                        image: "clipboard-text.png", titile: "مشخصات"),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.grey300,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "ساخت",
                                style: TextStyle(
                                  color: MyColors.grey500,
                                  fontFamily: "sm",
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "1402",
                                style: TextStyle(
                                  color: MyColors.grey700,
                                  fontFamily: "sm",
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: DottedLine(
                              direction: Axis.vertical,
                              lineLength: double.infinity,
                              lineThickness: 0.5,
                              dashLength: 4.0,
                              dashColor: MyColors.grey500,
                              dashRadius: 0.0,
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "طیقه",
                                style: TextStyle(
                                  color: MyColors.grey500,
                                  fontFamily: "sm",
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "دوبلکس",
                                style: TextStyle(
                                  color: MyColors.grey700,
                                  fontFamily: "sm",
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: DottedLine(
                              direction: Axis.vertical,
                              lineLength: double.infinity,
                              lineThickness: 0.5,
                              dashLength: 4.0,
                              dashColor: MyColors.grey500,
                              dashRadius: 0.0,
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "اتاق",
                                style: TextStyle(
                                  color: MyColors.grey500,
                                  fontFamily: "sm",
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "6",
                                style: TextStyle(
                                  color: MyColors.grey700,
                                  fontFamily: "sm",
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: DottedLine(
                              direction: Axis.vertical,
                              lineLength: double.infinity,
                              lineThickness: 0.5,
                              dashLength: 4.0,
                              dashColor: MyColors.grey500,
                              dashRadius: 0.0,
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "متراژ",
                                style: TextStyle(
                                  color: MyColors.grey500,
                                  fontFamily: "sm",
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "500",
                                style: TextStyle(
                                  color: MyColors.grey700,
                                  fontFamily: "sm",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "موقعیت مکانی",
                          style: TextStyle(
                            fontFamily: "sb",
                            fontSize: 18,
                            color: MyColors.grey700,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Image(image: AssetImage("assets/images/map.png")),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Image(
                        image: AssetImage("assets/images/location.png")),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Visibility(
                visible: _isShowPrice,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "قیمت",
                          style: TextStyle(
                            fontFamily: "sb",
                            fontSize: 18,
                            color: MyColors.grey700,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Image(image: AssetImage("assets/images/map.png")),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: MyColors.grey400,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "۴۶٬۴۶۰٬۰۰۰",
                                  style: TextStyle(
                                      color: MyColors.grey700,
                                      fontFamily: "sm",
                                      fontSize: 14),
                                ),
                                Text(
                                  "قیمت هر متر:",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: MyColors.grey700,
                                    fontFamily: "sm",
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "۴۶٬۴۶۰٬۰۰۰",
                                  style: TextStyle(
                                      color: MyColors.grey700,
                                      fontFamily: "sm",
                                      fontSize: 14),
                                ),
                                Text(
                                  "قیمت  کل:",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: MyColors.grey700,
                                    fontFamily: "sm",
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Visibility(
                visible: _isShowProperties,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "ویژگی ها",
                          style: TextStyle(
                            fontFamily: "sb",
                            fontSize: 18,
                            color: MyColors.grey700,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Image(
                            image: AssetImage("assets/images/clipboard.png")),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: MyColors.grey400,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "تک برگ",
                                  style: TextStyle(
                                      color: MyColors.grey500,
                                      fontFamily: "sm",
                                      fontSize: 14),
                                ),
                                Text(
                                  "سند:",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: MyColors.grey500,
                                    fontFamily: "sm",
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "شمالی",
                                  style: TextStyle(
                                      color: MyColors.grey500,
                                      fontFamily: "sm",
                                      fontSize: 14),
                                ),
                                Text(
                                  "جهت ساختمان",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: MyColors.grey500,
                                    fontFamily: "sm",
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "امکانات",
                          style: TextStyle(
                            fontFamily: "sb",
                            fontSize: 18,
                            color: MyColors.grey700,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Image(
                            image: AssetImage("assets/images/magicpen.png")),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: MyColors.grey200,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "آسانسور",
                              style: TextStyle(
                                color: MyColors.grey500,
                                fontFamily: "sm",
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Text(
                              "پارکینگ",
                              style: TextStyle(
                                color: MyColors.grey500,
                                fontFamily: "sm",
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Text(
                              "انباری",
                              style: TextStyle(
                                color: MyColors.grey500,
                                fontFamily: "sm",
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Text(
                              "بالکن",
                              style: TextStyle(
                                color: MyColors.grey500,
                                fontFamily: "sm",
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Text(
                              "پنت هاوس",
                              style: TextStyle(
                                color: MyColors.grey500,
                                fontFamily: "sm",
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Text(
                              "جنس کف سرامیک",
                              style: TextStyle(
                                color: MyColors.grey500,
                                fontFamily: "sm",
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 0.5,
                                dashLength: 4.0,
                                dashColor: MyColors.grey500,
                                dashRadius: 0.0,
                              ),
                            ),
                            Text(
                              "سرویس بهداشتی ایرانی",
                              style: TextStyle(
                                color: MyColors.grey500,
                                fontFamily: "sm",
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Visibility(
                visible: _isShowDescription,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "مشخصات",
                          style: TextStyle(
                            fontFamily: "sb",
                            fontSize: 18,
                            color: MyColors.grey700,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Image(image: AssetImage("assets/images/map.png")),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Text(
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: MyColors.grey500,
                          fontFamily: "sm",
                        ),
                        "ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.")
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.PrimaryBase,
                      maximumSize: const Size(170, 40),
                      minimumSize: const Size(160, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "اطلاعات تماس",
                          style: TextStyle(
                              color: MyColors.greyBase,
                              fontFamily: "sm",
                              fontSize: 16),
                        ),
                        const Image(image: AssetImage("assets/images/call.png"))
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.PrimaryBase,
                      maximumSize: const Size(170, 40),
                      minimumSize: const Size(160, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "گفتگو",
                          style: TextStyle(
                              color: MyColors.greyBase,
                              fontFamily: "sm",
                              fontSize: 16),
                        ),
                        const Image(
                            image: AssetImage("assets/images/message.png"))
                      ],
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

  Widget HorizontalBadgeWidget(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;

          if (title == "مشخصات") {
            setState(() {
              _isShowInformatopn = !_isShowInformatopn;
              _isShowDescription = false;
              _isShowProperties = false;
              _isShowPrice = false;
            });
          }
          if (title == "قیمت") {
            setState(() {
              _isShowPrice = !_isShowPrice;
              _isShowInformatopn = false;
              _isShowDescription = false;
              _isShowProperties = false;
            });
          }
          if (title == "ویژگی ها و امکانات") {
            setState(() {
              _isShowProperties = !_isShowProperties;
              _isShowPrice = false;
              _isShowInformatopn = false;
              _isShowDescription = false;
            });
          }
          if (title == "توضیحات") {
            setState(() {
              _isShowDescription = !_isShowDescription;
              _isShowProperties = false;
              _isShowPrice = false;
              _isShowInformatopn = false;
            });
          }
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 7,
          right: index == 0 ? 30 : 0,
        ),
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? MyColors.PrimaryBase
              : MyColors.greyBase,
          border: Border.all(
            width: _selectedIndex != index ? 1 : 0,
            color: MyColors.grey400,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: "sm",
                color: _selectedIndex == index
                    ? MyColors.greyBase
                    : MyColors.PrimaryBase,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
