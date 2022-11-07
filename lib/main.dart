import 'package:flutter/material.dart';
import 'package:nft_app/screen/into.dart';

import 'colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: dark,
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 30, color: white, fontWeight: FontWeight.w600),
              headline3: TextStyle(
                  fontSize: 24,
                  color: primaryColorLight,
                  fontWeight: FontWeight.w400),
              headline4: TextStyle(
                  fontSize: 22, color: white, fontWeight: FontWeight.w600),
              bodyText1: TextStyle(
                  fontSize: 16,
                  color: primaryColorLight,
                  fontWeight: FontWeight.w400),
              bodyText2: TextStyle(
                  fontSize: 16,
                  color: primaryColorLight,
                  fontWeight: FontWeight.w600),
              caption: TextStyle(
                  fontSize: 14,
                  color: primaryColorLight,
                  fontWeight: FontWeight.w300)),
        ),
        home: Intro());
  }
}
