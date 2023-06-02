import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/animated_progress_indicator.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/screens/main/components/side_menu.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinerProgressIndicator(
          percentages: 0.7,
          label: "Dart",
        ),
        AnimatedLinerProgressIndicator(
          percentages: 0.7,
          label: "Python",
        ),
        AnimatedLinerProgressIndicator(
          percentages: 0.6,
          label: "C++",
        ),
        AnimatedLinerProgressIndicator(
          percentages: 0.5,
          label: "JAVA",
        ),
        AnimatedLinerProgressIndicator(
          percentages: 0.4,
          label: "SQL",
        ),
      ],
    );
  }
}