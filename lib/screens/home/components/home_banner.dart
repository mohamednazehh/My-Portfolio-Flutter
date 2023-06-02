import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/screens/home/home_screen.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/img.png",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  "Discover my Amazing\nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                MyBuildAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                ElevatedButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding
                    ),
                    backgroundColor: primaryColor,
                  ),
                  child: Text(
                    "Explore Now",
                    style: TextStyle(
                      color: darkColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodeText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text("I build ",),
          AnimatedTextKit(
            animatedTexts:
            [
              TyperAnimatedText(
                "responsive web and mobile.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "complete e-commeres app UI.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "responsive Flutter Mobile Application.",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          FlutterCodeText(),
        ],
      ),
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children:
        [
          TextSpan(
            text: "Flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: ">",
          ),
        ],
      ),
    );
  }
}

