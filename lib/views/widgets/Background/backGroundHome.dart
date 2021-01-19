import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class BackGroundHome extends StatelessWidget {
  final Widget widget;
  const BackGroundHome({
    Key key,
    @required this.size,
    @required this.widget,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: size.height * .2,
          color: BlueText,
          child: WikiAppBar(
            name: "Ebene jean",
          ),
        ),
        Container(
          height: size.height * .2,
          margin: const EdgeInsets.only(top: 80, left: 20.0, right: 20.0),
          decoration: BoxDecoration(
            color: Bleu,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 100,
            width: size.width,
            child: widget,
          ),
        ),
      ],
    );
  }
}
