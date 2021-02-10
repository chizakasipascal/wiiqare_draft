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
          color: BACKGROUND,
          child: WikiAppBar(
            name: "Ebene jean",
          ),
        ),
        Container(
          height: size.height * .2,
          margin: const EdgeInsets.only(top: 80, left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            color: Bleu,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: White.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            height: 10,
            width: size.width,
            child: Center(child: widget),
          ),
        ),
      ],
    );
  }
}
