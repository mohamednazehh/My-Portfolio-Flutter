import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/screens/home/components/home_banner.dart';
import 'package:myportfolio/screens/home/home_screen.dart';
import 'package:myportfolio/screens/main/main-screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MainScreen(
        children: [
          HomeBanner(),
        ],
    );
  }
}


