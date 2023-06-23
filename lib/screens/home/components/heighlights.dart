import 'package:flutter/cupertino.dart';
import 'package:myportfolio/components/animated_counter.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/responsive.dart';
import 'package:myportfolio/screens/home/components/heigh_light.dart';
import 'package:myportfolio/screens/home/home_screen.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) ? Column(
        children:
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              HighLight(
                counter: AnimatedCounter(
                  value: 500,
                  text: "+",
                ),
                label: "LinkedIn",
              ),
              HighLight(
                counter: AnimatedCounter(
                  value: 1,
                  text: "K+",
                ),
                label: "Facebook",
              ),
            ],
          ),
          const SizedBox(height: defaultPadding,),
          HighLight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Instagram",
          ),
        ],
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            counter: AnimatedCounter(
              value: 500,
              text: "+",
            ),
            label: "LinkedIn",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 1,
              text: "K+",
            ),
            label: "Facebook",
          ),
          HighLight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Instagram",
          ),
        ],
      ),
    );
  }
}



