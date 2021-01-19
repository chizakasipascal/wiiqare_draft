import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

import '../wikiButtonLoginLockroUnLock.dart';

typedef void OnPressed();

class WelcomWhishWithButtomLogin extends StatelessWidget {
  final OnPressed onPressed;
  const WelcomWhishWithButtomLogin({
    Key key,
    this.onPressed,
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
            descpritionButtom: "Login", onPressed: onPressed)
      ],
    );
  }
}
