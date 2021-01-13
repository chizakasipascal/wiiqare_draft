import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WelcomBackGround(),
            Positioned(
              top: 0,
              child: Align(
                  alignment: Alignment.topCenter,
                  child: LogoWiiQare(size: size)),
            )
          ],
        ),
      ),
    );
  }
}
