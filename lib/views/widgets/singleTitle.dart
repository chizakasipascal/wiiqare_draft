import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class SingleTitle extends StatelessWidget {
  final singleTitle, size;
  final Color color;

  const SingleTitle({
    Key key,
    @required this.singleTitle,
    this.color = BlueText,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      singleTitle,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}