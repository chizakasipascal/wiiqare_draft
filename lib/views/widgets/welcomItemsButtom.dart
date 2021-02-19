import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

typedef OnPressed();

class WelcomItemsButtom extends StatelessWidget {
  final Widget widget;
  final Size size;
  final OnPressed onPressed;
  final Color color, background;
  const WelcomItemsButtom({
    Key key,
    @required this.size,
    @required this.widget,
    this.onPressed,
    this.color = WikiBleu,
    this.background = White,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: onPressed,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Material(
            child: Container(
              // height: 190,
              color: background,
              width: size.width * .4,
              child: Column(
                children: [
                  widget,
                  Container(
                    height: 5,
                    color: color,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
