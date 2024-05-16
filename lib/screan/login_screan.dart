import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/screan/confirm_mobile_screan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage("assets/images/aviz.png")),
                Text(
                  " ورود به ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "sb",
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
             Text(
              textDirection: TextDirection.rtl,
              "خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!",
              style: TextStyle(
                color: MyColors.grey500,
                fontFamily: "sm",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "شماره موبایل",
                  hintStyle: TextStyle(
                    color: MyColors.grey,
                    fontFamily: "sb",
                    fontSize: 14,
                  ),
                  fillColor: const Color.fromRGBO(249, 250, 251, 1),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: MyColors.PrimaryBase,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.PrimaryBase,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context){
                    return ConfirmMobileScrean();
                  }
                  )
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("assets/images/shift-left.png"),
                    color: Colors.white,
                    width: 35,
                  ),
                  Text(
                    "مرحله بعد",
                    style: TextStyle(
                      color: MyColors.white,
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
                  "ثبت نام",
                  style: TextStyle(
                    color: MyColors.PrimaryBase,
                    fontSize: 14,
                    fontFamily: "sm",
                  ),
                ),
                const Text(
                  " تاحالا ثبت نام نکردی؟",
                  style: TextStyle(
                    color: Color.fromRGBO(208, 213, 221, 1),
                    fontFamily: "sm",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
