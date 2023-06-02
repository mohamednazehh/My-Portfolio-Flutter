/*
import 'package:flutter/material.dart';
import 'package:myportfolio/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:myportfolio/screens/main-screen.dart';


import 'constants.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textButtonTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme).apply(
        bodyColor: Colors.white).copyWith(
      bodyText1: TextStyle(color: bodyTextColor),
      bodyText2: TextStyle(color: bodyTextColor),
    ),
      ),
    home: const MainScreen(),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:myportfolio/screens/home/home_screen.dart';
import 'package:myportfolio/screens/main/main-screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              GoogleFonts.poppinsTextTheme(
                ThemeData.dark().textTheme,
              ).bodyText1?.copyWith(color: Colors.white),
            ),
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.dark().textTheme,
        ).copyWith(
          bodyText1: TextStyle(color: bodyTextColor),
          bodyText2: TextStyle(color: bodyTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
