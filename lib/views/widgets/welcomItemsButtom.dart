import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class WelcomItemsButtom extends StatelessWidget {
  final Widget widget;
  final Size size;
  final Color color;
  const WelcomItemsButtom({
    Key key,
    @required this.size,
    @required this.widget,
    this.color = Yello,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          child: Container(
            height: 180,
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
    );
  }
}
