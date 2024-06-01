import 'package:aviz_application/Di/di.dart';
import 'package:aviz_application/screan/botton_navigation_screan.dart';
import 'package:flutter/material.dart';

void main() async {
  await initLocator();
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
      home: BottonNavigationScrean(),
    );
  }
}
