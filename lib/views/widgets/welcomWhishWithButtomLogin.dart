import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/widgets/wikiButtonLoginLockroUnLock.dart';

class WelcomWhishWithButtomLogin extends StatelessWidget {
  const WelcomWhishWithButtomLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleText20pixel(designation: "Bienvenu"),
            SingleText20pixel(designation: "WiiQare"),
          ],
        ),
        WikiButtonLoginLockroUnLock(
          descpritionButtom: "Login",
          onPressed: () {
            //TODO:Code de navigator from help page
            Navigator.pushNamed(context, Routes.help);
          },
        )
      ],
    );
  }
}
