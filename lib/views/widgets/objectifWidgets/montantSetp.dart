import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class MontantSetp extends StatefulWidget {
  final montant, duree;
  final int value;
  final void Function(int) onTap;
  const MontantSetp({
    Key key,
    this.montant,
    this.duree,
    this.value,
    this.onTap,
  }) : super(key: key);

  @override
  _MontantSetpState createState() => _MontantSetpState();
}

class _MontantSetpState extends State<MontantSetp> {
  int _group = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleTitle(
            singleTitle: widget.montant,
            color: Bleu,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 5.0),
          SingleTitle(
            singleTitle: widget.duree,
            color: Bleu,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
      trailing: Radio(
        groupValue: widget.value,
        value: widget.value,
        onChanged: widget.onTap,

        // (t) {
        //   setState(() {
        //     _group = t;
        //   });
        // },
      ),
    );
  }
}
