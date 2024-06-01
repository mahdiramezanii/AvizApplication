import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/Features/Home/screan/home_screan.dart';
import 'package:aviz_application/screan/profile_screan.dart';
import 'package:aviz_application/screan/register_aviz_screan.dart';
import 'package:aviz_application/Features/search/screan/search_screan.dart';
import 'package:flutter/material.dart';

class BottonNavigationScrean extends StatefulWidget {
  @override
  State<BottonNavigationScrean> createState() => _BottonNavigationScreanState();
}

class _BottonNavigationScreanState extends State<BottonNavigationScrean> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greyBase,
      body: IndexedStack(
        index: _currentIndex,
        children: ScreanListWidget(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.grey100,
        iconSize: 10,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: MyColors.PrimaryBase,
        currentIndex: _currentIndex,
        selectedFontSize: 16,
        selectedLabelStyle: const TextStyle(
          fontFamily: "sb",
        ),
        unselectedFontSize: 14,
        unselectedLabelStyle: TextStyle(
          color: MyColors.grey400,
          fontFamily: "sm",
        ),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/profile-circle.png"),
            label: "آویز من",
            activeIcon: Image.asset("assets/images/profile-circleA.png"),
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/add-circle.png"),
              label: "افزودن آویز",
              activeIcon: Image.asset("assets/images/add-circleA.png")),
          BottomNavigationBarItem(
              label: "جستجو",
              icon: Image.asset(
                "assets/images/search-normal.png",
              ),
              activeIcon: Image.asset("assets/images/search-normalA.png")),
          BottomNavigationBarItem(
              label: "آویز آگهی ها",
              icon: Image.asset(
                "assets/images/aciz_bottun.png",
              ),
              activeIcon: Image.asset("assets/images/avizbA.png"))
        ],
      ),
    );
  }

  List<Widget> ScreanListWidget() {
    List<Widget> response = [
      ProfileScrean(),
      RegisterAvizScrean(),
      SerachScrean(),
      HomeScrean(),
    ];

    return response;
  }
}
