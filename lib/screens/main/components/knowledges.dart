import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myportfolio/constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(
          text: "Flutter,  Dart",
        ),
        const KnowledgeText(
          text: "Data Scientist ",
        ),
        const KnowledgeText(
          text: "Machine Learning",
        ),
        const KnowledgeText(
          text: "Deep Learning",
        ),
        const KnowledgeText(
          text: "Competitive programming ",
        ),
        const KnowledgeText(
          text: "Google DSC",
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children:
        [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}



