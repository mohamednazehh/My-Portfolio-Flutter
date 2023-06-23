import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/responsive.dart';
import 'package:myportfolio/screens/home/home_screen.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobileLarge(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/img_1.png",
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
                  "Pause, ponder, take a footstep\ntowards grander!",
            style: Responsive.isDesktop(context) ? Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ) : Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                if(Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2,),
                MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding,),
                if(!Responsive.isMobileLarge(context))
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
      maxLines: 1,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context)) FlutterCodeText(),
          if(!Responsive.isMobileLarge(context))
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text("I build ",),
          Responsive.isMobile(context) ? Expanded(child: AnimatedText(),) : AnimatedText(),
          if(!Responsive.isMobileLarge(context))
          SizedBox(width: defaultPadding / 2,),
          if(!Responsive.isMobileLarge(context)) FlutterCodeText1(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
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
            text: "Pansée",
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

class FlutterCodeText1 extends StatelessWidget {
  const FlutterCodeText1({
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
            text: "Mostafa",
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

