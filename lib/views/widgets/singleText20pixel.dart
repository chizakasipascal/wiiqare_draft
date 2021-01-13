import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class SingleText20pixel extends StatelessWidget {
  final designation;
  final Color color;
  const SingleText20pixel({
    Key key,
    this.designation,
    this.color = White,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      designation,
      style: TextStyle(
        color: White,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
