import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myportfolio/components/animated_progress_indicator.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/screens/main/components/area_info_text.dart';
import 'package:myportfolio/screens/main/components/coding.dart';
import 'package:myportfolio/screens/main/components/knowledges.dart';
import 'package:myportfolio/screens/main/components/my_info.dart';
import 'package:myportfolio/screens/main/components/side_menu.dart';
import 'package:myportfolio/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:
        [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children:
                [
                  AreaInfoText(
                    title: "Residence",
                    text: "Egypt",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Mokattam",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "20",
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "Download CV",
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children:
                      [
                        Spacer(),
                        IconButton(
                            onPressed: (){},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: (){},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: (){},
                            icon: SvgPicture.asset("assets/icons/whatsapp.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

