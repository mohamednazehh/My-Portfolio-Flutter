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
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
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
                      text: "Alexandria",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "23",
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
                      onPressed: () {
                        launchPdf();
                      },
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
                              onPressed: (){
                                launchLinkedIn();
                              },
                              icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: (){
                                launchFacebook();
                              },
                              icon: SvgPicture.asset("assets/icons/facebook.svg"),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: (){
                                launchWhatsApp();
                              },
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
      ),
    );
  }
}
void launchPdf() async {
  // Replace the URL with the LinkedIn profile or any other LinkedIn page you want to open
  //final url = '';
  final url = 'https://drive.google.com/file/d/1-uSr7NTY_M8ASnZC2Xo3gxYBKzgwi84E/view?usp=sharing';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchLinkedIn () async {
  // Replace the URL with the LinkedIn profile or any other LinkedIn page you want to open
  //final url = 'https://www.linkedin.com/in/panseemostafa';
  final url = 'https://www.linkedin.com/in/panseemostafa';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchFacebook() async {
  // Replace the URL with the LinkedIn profile or any other LinkedIn page you want to open
  //final url = 'https://www.linkedin.com/in/panseemostafa';
  final url = 'https://www.facebook.com/sci.pansology.1';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchWhatsApp() async {
  // Replace the URL with the LinkedIn profile or any other LinkedIn page you want to open
  //final url = 'https://www.linkedin.com/in/panseemostafa';
  final url = 'https://drive.google.com/file/d/1-uSr7NTY_M8ASnZC2Xo3gxYBKzgwi84E/view?usp=sharing';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


