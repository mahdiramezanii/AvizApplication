  import 'package:flutter/material.dart';

PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Transform.scale(
          scale: 1.5,
          child: const Image(image: AssetImage("assets/images/avizhome.png"))),
      centerTitle: true,
    );
  }