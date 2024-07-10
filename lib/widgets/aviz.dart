import 'package:aviz_application/Features/Home/data/models/promotions_model.dart';
import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/utility/network_imgae.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VerticalAviz extends StatelessWidget {
  Promotion promotaion;
  VerticalAviz({
    super.key,
    required this.promotaion,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 230,
        height: 300,
        padding: const EdgeInsets.all(16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          shadows: const [
            BoxShadow(
              color: Color.fromARGB(255, 218, 218, 218),
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                0.0,
                10,
              ),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CashNetworkImage(
                image_url: promotaion.thumbnailUrl,
                height: 112,
                width: 200,
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
    );
  }
}

class HorizontalAviz extends StatelessWidget {
  Promotion normalPromotaion;
  HorizontalAviz(
    this.normalPromotaion, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      child: Card(
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            children: [
              SizedBox(
                width: 150,
                child: CashNetworkImage(
                  image_url: normalPromotaion.thumbnailUrl,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      normalPromotaion.title,
                      textAlign: TextAlign.right,
                      maxLines: 2,
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
                      normalPromotaion.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
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
                              normalPromotaion.price.toString(),
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
