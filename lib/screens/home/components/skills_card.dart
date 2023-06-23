import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/models/Skills.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    super.key, required this.skilles,
  });

  final Skills skilles;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Text(
            skilles.title!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            skilles.description!,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}



