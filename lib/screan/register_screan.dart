import 'package:aviz_application/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage("assets/images/aviz.png")),
                Text(
                  "  خوش اومدی به",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "sb",
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "این فوق العادست که آویزو برای آگهی هات انتخاب کردی!",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: MyColors.grey500,
                fontFamily: "sb",
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: MyColors.grey100,
                    filled: true,
                    hintText: "نام و نام خانوادگی",
                    hintStyle: TextStyle(
                      fontFamily: "sb",
                      fontSize: 16,
                      color: MyColors.grey500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: MyColors.red3),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: MyColors.grey100,
                    filled: true,
                    hintText: "شماره تلفن",
                    hintStyle: TextStyle(
                      fontFamily: "sb",
                      fontSize: 16,
                      color: MyColors.grey500,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: MyColors.red3),
                    )),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.red3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4))),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/images/shift-left.png")),
                  Text(
                    "  مرحله بعد ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "sb",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ورود",
                  style: TextStyle(
                    color: MyColors.red3,
                    fontFamily: "sm",
                    fontSize: 14,
                  ),
                ),
                Text(
                  "  قبلا ثبت نام نکردی؟  ",
                  style: TextStyle(
                    color: MyColors.grey400,
                    fontFamily: "sm",
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      )),
    );
  }
}
