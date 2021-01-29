import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class SendButtom extends StatelessWidget {
  final Icon icon;
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final Function onPressed;
  SendButtom(
      {this.icon,
      this.onPressed,
      this.iconData,
      this.iconColor,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: icon ??
            Icon(iconData ?? Icons.arrow_back,
                size: iconSize ?? 20, color: iconColor ?? BlueText),
      ),
    );
  }
}
