import 'package:aviz_application/screan/category_screan.dart';
import 'package:aviz_application/screan/home_screan.dart';
import 'package:aviz_application/screan/profile_screan.dart';
import 'package:aviz_application/screan/register_aviz_screan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              outline: Colors.transparent,
            ),
      ),
      home: ProfileScrean(),
    );
  }
}
