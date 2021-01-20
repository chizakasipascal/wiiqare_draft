import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class ModePayement extends StatefulWidget {
  @override
  _ModePayementState createState() => _ModePayementState();
}

class _ModePayementState extends State<ModePayement> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: White,
          height: size.height,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                SingleTitle(singleTitle: "Autre methdodes de paiement")
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * .7,
          child: WelcomBackGround(
            widget: Center(child: Placeholder()),
          ),
        ),
      ],
    );
  }
}
