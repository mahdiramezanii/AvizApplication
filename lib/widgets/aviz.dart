import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:aviz_application/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VerticalAviz extends StatelessWidget {
  Promotaions promotaion;
  VerticalAviz({
    super.key,
    required this.promotaion,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: 267,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: MyColors.greyBase,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage("assets/images/h1.png"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  promotaion.title,
                  maxLines: 1,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: MyColors.grey700,
                    fontFamily: "sb",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  textDirection: TextDirection.rtl,
                  "ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری",
                  style: TextStyle(color: MyColors.grey500, fontFamily: "sb"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ":قیمت",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontFamily: "sb",
                        fontSize: 16,
                        color: MyColors.grey700,
                      ),
                    ),
                    Container(
                      width: 91,
                      height: 26,
                      color: MyColors.grey100,
                      child: Center(
                        child: Text(
                          "۲۵٬۶۸۳٬۰۰۰٬۰۰۰",
                          style: TextStyle(
                            fontFamily: "sm",
                            fontSize: 12,
                            color: MyColors.PrimaryBase,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HorizontalAviz extends StatelessWidget {
  const HorizontalAviz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 145,
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            children: [
              const Image(image: AssetImage("assets/images/h2.png")),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "ویلا ۵۰۰ متری زیر قیمت",
                      style: TextStyle(
                        color: MyColors.grey700,
                        fontFamily: "sb",
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      textDirection: TextDirection.rtl,
                      "سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: MyColors.grey500,
                        fontFamily: "sb",
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 91,
                          height: 26,
                          color: MyColors.grey100,
                          child: Center(
                            child: Text(
                              "۲۵٬۶۸۳٬۰۰۰٬۰۰۰",
                              style: TextStyle(
                                fontFamily: "sm",
                                fontSize: 12,
                                color: MyColors.PrimaryBase,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          ":قیمت",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontFamily: "sb",
                            fontSize: 16,
                            color: MyColors.grey700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
