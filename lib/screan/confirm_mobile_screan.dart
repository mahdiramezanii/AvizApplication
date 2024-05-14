
import 'package:aviz_application/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ConfirmMobileScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _tController1 = TextEditingController();
    TextEditingController _tController2 = TextEditingController();
    TextEditingController _tController3 = TextEditingController();
    TextEditingController _tController4 = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
              width: double.infinity,
            ),
            const Text(
              "تایید شماره موبایل" ,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "sb",
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "کد ورود پیامک شده را وارد کنید",
              style: TextStyle(
                color: MyColors.grey500,
                fontFamily: "sb",
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputNumberTextField(
                  focus: true,
                  textController: _tController1,
                  number: 1,
                ),
                InputNumberTextField(
                  focus: false,
                  textController: _tController2,
                  number: 2,
                ),
                InputNumberTextField(
                  focus: false,
                  textController: _tController3,
                  number: 3,
                ),
                InputNumberTextField(
                  focus: false,
                  textController: _tController4,
                  number: 4,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " ارسال مجدد کد ",
                  style: TextStyle(
                    color: MyColors.grey500,
                    fontFamily: "sb",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "00:45",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "sb",
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  maximumSize:const Size(400,80),
                  minimumSize: const Size(350,40),

                  backgroundColor: MyColors.red3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                  )

                ),
                onPressed: () {},
                child: const Text(
                  "تایید ورود",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "sb",
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}

class InputNumberTextField extends StatelessWidget {
  bool focus;
  int number;
  TextEditingController textController = TextEditingController();
  InputNumberTextField({
    super.key,
    required this.focus,
    required this.textController,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      decoration: BoxDecoration(
        color: MyColors.grey300,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        controller: textController,
        style: const TextStyle(
          fontFamily: "sm",
          fontSize: 20,
        ),
        keyboardType: TextInputType.phone,
        onChanged: (value) {
          if ((value.isNotEmpty) && (number != 4)) {
            FocusScope.of(context).nextFocus();
          }
        },
        maxLines: 1,
        maxLength: 1,
        textAlign: TextAlign.center,
        autofocus: focus,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.red3,
            ),
          ),
        ),
      ),
    );
  }
}
