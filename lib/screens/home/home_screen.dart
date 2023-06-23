import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/models/Skills.dart';
import 'package:myportfolio/models/work-experience.dart';
import 'package:myportfolio/screens/home/components/heighlights.dart';
import 'package:myportfolio/screens/home/components/home_banner.dart';
import 'package:myportfolio/screens/home/components/my_work_experience.dart';
import 'package:myportfolio/screens/home/components/skillss.dart';
import 'package:myportfolio/screens/home/home_screen.dart';
import 'package:myportfolio/screens/main/main-screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MainScreen(
        children: [
          HomeBanner(),
          HighLightsInfo(),
          /*Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:
            [
              Text(
                "About \nmy story ",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                constraints: BoxConstraints(maxWidth: 800),
                color: Colors.white,
                child: Text(
                  "As a results-driven professional with a strategic mindset and strong analytical abilities, I bring valuable expertise in driving growth and optimizing business operations. With a proven track record of identifying opportunities and delivering impactful strategies, I can contribute significantly to the success of your business."
                ),
              ),
            ],
          ),*/
          MyWorkExperience(),
          Skillss(),
        ],
    );
  }
}

