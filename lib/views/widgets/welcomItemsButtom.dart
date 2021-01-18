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
    this.color = Yello,
    this.background = White,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: onPressed,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Material(
            child: Container(
              height: 180,
              color: background,
              width: size.width * .4,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 5,
                      color: color,
                    ),
                  ),
                  widget,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
