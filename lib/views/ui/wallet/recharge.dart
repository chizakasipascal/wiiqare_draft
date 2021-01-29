import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class Recharge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: White,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: BlueText),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Recharge"),
        ),
      ),
    );
  }
}
