import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class GroupeStep1 extends StatelessWidget {
  const GroupeStep1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleTitle(
          singleTitle:
              "Créer un groupe santé est une bonne manier de se protege en cas de problème de santé grave",
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        SingleTitle(
          singleTitle: "Nom du groupe sante:",
          color: Grey,
        ),
        SizedBox(height: 5.0),
        Container(
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
          child: wikiText(hint: "Ex WiiQare"),
        ),
        SizedBox(height: 5.0),
        SingleTitle(
          singleTitle: "Description du groupe sante",
          color: Grey,
        ),
        SizedBox(height: 5.0),
        Container(
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
          child: wikiText(hint: "Combo box"),
        ),
        SingleTitle(
          singleTitle: "Combien de chaque doit continue",
          color: Grey,
        ),
        SizedBox(height: 5.0),
        Container(
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
          child: wikiText(hint: "Combo box"),
        ),
        SingleTitle(
          singleTitle: "Choisis la fréquence pour contribue",
          color: Grey,
        ),
        SizedBox(height: 5.0),
        Container(
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
          child: wikiText(hint: "Combo box"),
        ),
      ],
    );
  }
}
