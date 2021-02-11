import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class ExpandeItemSetting extends StatelessWidget {
  final String title, tage;
  List<Widget> children = const <Widget>[];
  ExpandeItemSetting({Key key, this.title, this.tage, this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        expandedAlignment: Alignment.topLeft,
        childrenPadding: const EdgeInsets.all(10.0),
        title: SingleTitle(singleTitle: title),
        leading: Icon(Icons.person),
        subtitle: SingleTitle(
          singleTitle: tage,
        ),
        children: children);
  }
}
