import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/screan/login_screan.dart';
import 'package:aviz_application/screan/register_screan.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomScrean extends StatelessWidget {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: ((context, index) {
                  return PageViewContent();
                }),
              ),
            ),
            const Spacer(),
            SmoothPageIndicator(
              controller: _pageController,

              // PageController
              count: 3,

              effect: ExpandingDotsEffect(
                  dotColor: MyColors.grey,
                  activeDotColor: MyColors.red3,
                  dotWidth: 10,
                  dotHeight: 10,
                  spacing: 3), // your preferred effect
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(160, 40),
                    minimumSize: const Size(160, 40),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginScrean();
                    }));
                  },
                  child: Text(
                    "ورود",
                    style: TextStyle(
                      color: MyColors.red3,
                      fontFamily: "sb",
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(200, 40),
                    minimumSize: const Size(160, 40),
                    backgroundColor: MyColors.red3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context){

                        return RegisterScrean();

                      })
                    );
                  },
                  child: const Text(
                    "ثبت نام",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "sb",
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class PageViewContent extends StatelessWidget {
  PageViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 100,
          width: double.infinity,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image(image: AssetImage("assets/images/welcome_back.png")),
            Image(image: AssetImage("assets/images/test.png")),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "آگهی شماست ",
              style: TextStyle(
                fontFamily: "sb",
                fontSize: 16,
              ),
            ),
            Image(image: AssetImage("assets/images/aviz.png")),
            Text(
              " اینجا محل",
              style: TextStyle(
                fontFamily: "sb",
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "sm",
              color: Colors.grey,
              fontSize: 14,
            ),
            "در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید",
          ),
        ),
      ],
    );
  }
}
