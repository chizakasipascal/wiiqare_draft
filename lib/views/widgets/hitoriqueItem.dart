import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class HistoriqueItem extends StatelessWidget {
  final title, date, typeDescption;
  final Widget widget;
  const HistoriqueItem({
    Key key,
    this.title,
    this.date,
    this.typeDescption,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: BlueText,
      leading: SizedBox(height: 50, width: 50, child: widget),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleTitle(singleTitle: title),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleTitle(
                singleTitle: date,
                size: 12.0,
              ),
              SingleTitle(
                singleTitle: typeDescption,
                size: 12.0,
                color: WikiBleu,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
