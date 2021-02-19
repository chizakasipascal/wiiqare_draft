import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

typedef void OnPressed();
typedef ValueChanged<T> = void Function(T value);

class WikiButtonLoginLockroUnLock extends StatelessWidget {
  final bool isPressed;
  final String descpritionButtom;
  final OnPressed onPressed;
  final ValueChanged<bool> onHighlightChanged;

  const WikiButtonLoginLockroUnLock({
    Key key,
    this.descpritionButtom,
    this.onPressed,
    this.onHighlightChanged,
    this.isPressed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .06,
      width: 100,
      // decoration: BoxDecoration(
      //   color: White,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(30),
      //     bottomLeft: Radius.circular(30),
      //   ),
      // ),
      child: FlatButton(
        splashColor: White,
        color: White,
        onPressed: onPressed, //!enable ? onPressed : null,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: White), //Theme.of(context).primaryColor),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        onHighlightChanged: onHighlightChanged,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              descpritionButtom,
              style: TextStyle(
                color:
                    BlueText, // this.isPressed ? RedColor : Color(0xffFFFFFF),
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.lock,
              color: BlueText,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
