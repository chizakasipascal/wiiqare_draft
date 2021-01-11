import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class GrandTitle extends StatelessWidget {
  final title;
  const GrandTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: BlueText,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );
  }
}
