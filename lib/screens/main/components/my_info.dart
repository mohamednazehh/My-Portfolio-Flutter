import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children:
          [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/mohamednazeh.jpg"),
            ),
            Spacer(),
            Text(
              "Mohamed Nazeh",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Flutter Developer & \n Data Scientist",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}


