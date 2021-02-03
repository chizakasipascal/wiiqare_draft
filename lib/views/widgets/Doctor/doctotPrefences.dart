import 'package:flutter/material.dart';

class DoctotPrefences extends StatelessWidget {
  final Widget widget;
  const DoctotPrefences({
    Key key,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 120,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: widget,
      ),
    );
  }
}
