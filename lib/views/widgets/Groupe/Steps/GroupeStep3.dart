import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class GroupeStep3 extends StatelessWidget {
  const GroupeStep3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleTitle(
          singleTitle: "Selection les beneficaire.",
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.0),
        Flexible(
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: White,
              boxShadow: [
                BoxShadow(
                  color: Grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Flexible(
                      child: wikiText(hint: "Chercher les beneficaire."),
                    ),
                    Icon(
                      Icons.search,
                      color: BlueText,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
