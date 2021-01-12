import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class SingleTitle extends StatelessWidget {
  final singleTitle;
  const SingleTitle({
    Key key,
    @required this.singleTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      singleTitle,
      style: TextStyle(color: BlueText),
    );
  }
}
