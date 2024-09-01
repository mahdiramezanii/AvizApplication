
import 'package:aviz/constant/colors.dart';
import 'package:aviz/screan/detail_regiter_aviz_screan.dart';
import 'package:aviz/widgets/app_bar.dart';
import 'package:aviz/widgets/category_horizontal_widgets.dart';
import 'package:flutter/material.dart';

class LocationAvizScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AvizAppBar(title: "موقعیت مکانی آویز"),
      backgroundColor: MyColors.greyBase,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
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
            Text(
              "بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: MyColors.grey500,
                fontFamily: "sm",
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Image(image: AssetImage("assets/images/location.png")),
            const SizedBox(
              height: 30,
            ),
            SwitchCategoryHorizontal(
              switichValue: false,
              title: "موقعیت دقیق  نمایش داده شود؟",
            ),
            const Spacer(),
            ElevatedButton(
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
                      return DetailRegisterAvizScrean();
                    },
                  ),
                );
              },
              child: Text(
                "بعدی",
                style: TextStyle(
                  color: MyColors.greyBase,
                  fontFamily: "sm",
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
