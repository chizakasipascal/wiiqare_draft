import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class SingleText20pixel extends StatelessWidget {
  final designation;
  final Color color;
  const SingleText20pixel({
    Key key,
    @required this.designation,
    this.color = White,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      designation,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
