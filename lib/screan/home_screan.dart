import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: getAppBar(),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("")
              ],
            )
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Transform.scale(
          scale: 1.5,
          child: const Image(image: AssetImage("assets/images/avizhome.png"))),
      centerTitle: true,
    );
  }
}
