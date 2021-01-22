import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

typedef OnPressed();

class WikiImtesHome extends StatelessWidget {
  final Widget icon;
  final String chaine;
  final Color color, border, textColor;
  final OnPressed onPressed;
  const WikiImtesHome({
    Key key,
    @required this.chaine,
    @required this.icon,
    @required this.onPressed,
    this.color = White,
    this.border = Bleu,
    this.textColor = BlueText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(

          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: border),

              boxShadow: [
                BoxShadow(
                  color: Grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],


          ),
          child: IconButton(icon: icon, onPressed: onPressed),
        ),
        SizedBox(height: 5),
        SingleTitle(
          singleTitle: chaine,
          color: textColor,
        )
      ],
    );
  }
}
