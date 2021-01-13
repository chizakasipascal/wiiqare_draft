import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class WelcomItemsButtom extends StatelessWidget {
  final Widget widget;
  const WelcomItemsButtom({
    Key key,
    @required this.size,
    @required this.widget,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Material(
        child: Container(
          height: 180,
          width: size.width * .5,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5,
                  color: Yello,
                ),
              ),
              widget,
            ],
          ),
        ),
      ),
    );
  }
}
