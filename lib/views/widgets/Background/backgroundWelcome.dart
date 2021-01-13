import 'package:flutter/material.dart';

class WelcomBackGround extends StatelessWidget {
  const WelcomBackGround({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFA6E4F8),
            // Color(0xFFEEF3F3),
            Color(0xFFEDEFEC),
            Color(0xFFECECE7),
            Color(0xFFEFFBFF),
          ],
        ),
      ),
    );
  }
}
