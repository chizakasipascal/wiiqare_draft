import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BackGroundHome(
              size: size,
              widget: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
