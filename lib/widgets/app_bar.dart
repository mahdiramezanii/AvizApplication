
import 'package:aviz/constant/colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget getAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    surfaceTintColor: MyColors.greyBase,
    title: Transform.scale(
        scale: 1.5,
        child: const Image(image: AssetImage("assets/images/avizhome.png"))),
    centerTitle: true,
  );
}

PreferredSizeWidget AvizAppBar({required String title}) {
  return AppBar(
    backgroundColor: MyColors.greyBase,
    automaticallyImplyLeading: false,
    surfaceTintColor: MyColors.greyBase,
    actions: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage("assets/images/close.png"),
              ),
              Text(
                "$title",
                style: TextStyle(
                  fontFamily: "sb",
                  color: MyColors.PrimaryBase,
                  fontSize: 20,
                ),
              ),
              const Image(
                image: AssetImage("assets/images/shift-right.png"),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
