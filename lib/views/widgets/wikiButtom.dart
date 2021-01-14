import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

typedef void OnPressed();
typedef ValueChanged<T> = void Function(T value);

class WikiButtom extends StatelessWidget {
  final bool isPressed;
  final String descpritionButtom;
  final Color color;
  final OnPressed onPressed;
  final ValueChanged<bool> onHighlightChanged;

  const WikiButtom({
    Key key,
    this.descpritionButtom,
    this.onPressed,
    this.onHighlightChanged,
    this.isPressed = false,
    this.color = Yello,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.white,
      color: color,
      onPressed: onPressed, //!enable ? onPressed : null,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: White), //Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      onHighlightChanged: onHighlightChanged,
      child: Center(
        child: Text(
          descpritionButtom,
          style: TextStyle(
            color: White, // this.isPressed ? RedColor : Color(0xffFFFFFF),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
