import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class SingleTitle extends StatelessWidget {
  final singleTitle, size;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color color;

  const SingleTitle({
    Key key,
    @required this.singleTitle,
    this.color = BlueText,
    this.size,
    this.fontWeight,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      singleTitle,
      textAlign: textAlign,
      style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
    );
  }
}
