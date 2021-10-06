import 'package:flutter/material.dart';
import 'package:officialdemo_v1/SCREEN/1_StartPage/start_page.dart';
import 'package:officialdemo_v1/widget/theme_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GotIt',
      theme: ThemeData(
        primaryColor: ThemeColors.primaryColor,
        scaffoldBackgroundColor: ThemeColors.scaffoldBgColor,
      ),
      home: StartPage(),
    );
  }
}
