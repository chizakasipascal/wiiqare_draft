import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

typedef OnPressed();

class MontantSetp extends StatelessWidget {
  final montant, duree;
  final bool value;
  final OnPressed onTap;
  const MontantSetp({
    Key key,
    this.montant,
    this.duree,
    this.value,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleTitle(
            singleTitle: montant,
            color: Bleu,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 5.0),
          SingleTitle(
            singleTitle: duree,
            color: Bleu,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
      trailing: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: value
                ? Icon(
                    Icons.check,
                    size: 15.0,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 15.0,
                    color: Colors.blue,
                  ),
          ),
        ),
      ),
    );
  }
}
