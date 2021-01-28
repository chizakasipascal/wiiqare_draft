import 'package:flutter/material.dart';

class GroupStep extends StatelessWidget {
  final Widget widget;
  const GroupStep({
    Key key,
    @required this.size,
    this.widget,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(child: widget);
  }
}
