import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/models/Skills.dart';
import 'package:myportfolio/screens/home/components/skills_card.dart';
import 'package:myportfolio/screens/home/home_screen.dart';

class Skillss extends StatelessWidget {
  const Skillss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.headline6!,
          ),
          const SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                recentWorks.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: SkillsCard(
                    skilles: recentWorks[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

