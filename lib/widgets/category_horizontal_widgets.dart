import 'package:aviz_application/constant/colors.dart';
import 'package:flutter/material.dart';

class SwitchCategoryHorizontal extends StatefulWidget {
  bool switichValue;
  String title;

  SwitchCategoryHorizontal({required this.switichValue,required this.title});

  @override
  State<SwitchCategoryHorizontal> createState() =>
      _SwitchCategoryHorizontalState();
}

class _SwitchCategoryHorizontalState extends State<SwitchCategoryHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.greyBase,
        border: Border.all(
          color: MyColors.grey200,
          width: 2,
        ),
      ),
      child: Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Switch(
              value: widget.switichValue,
              activeColor: MyColors.greyBase,
              activeTrackColor: MyColors.red3,
              inactiveTrackColor: MyColors.grey400,
              splashRadius: 0,
              inactiveThumbColor: Colors.white,
              onChanged: (bool newValue) {
                setState(
                  () {
                    widget.switichValue = !widget.switichValue;
                  },
                );
              },
            ),
            Text(
              "${widget.title}",
              style: TextStyle(
                color: MyColors.grey700,
                fontFamily: "sm",
                overflow: TextOverflow.ellipsis,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
