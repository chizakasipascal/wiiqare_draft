import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class WelcomBackGround extends StatelessWidget {
  final Widget widget;
  const WelcomBackGround({
    Key key,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // Color(0xFFA6E4F8),
            BlueText,
            // Color(0xFFEEF3F3),
            Color(0xFFEDEFEC),
            Color(0xFFECECE7),
            Color(0xFFEFFBFF),
          ],
        ),
      ),
      child: widget,
    );
  }
}
