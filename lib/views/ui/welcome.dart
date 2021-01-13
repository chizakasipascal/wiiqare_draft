import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WelcomBackGround(),
        ],
      ),
    );
  }
}
