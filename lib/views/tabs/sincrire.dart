import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Sincrire extends StatefulWidget {
  @override
  _SincrireState createState() => _SincrireState();
}

class _SincrireState extends State<Sincrire> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            GrandTitle(title: "Créer un compte"),
            SizedBox(height: 20.0),
            //Nom complet
            Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: Yello,
                ),
                boxShadow: [
                  BoxShadow(
                      color: HintText, offset: Offset(0, 4), blurRadius: 2),
                ],
              ),
              child: wikiText(
                hint: 'chiza kasi pascal',
                label: 'Nom complet',
              ),
            ),
            SizedBox(height: 20.0),

            //TODO:Packegs number and flags authentification
            Container(
              height: 150,
              child: Placeholder(),
            ),
            //Mot de passe
            Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: Yello,
                ),
                boxShadow: [
                  BoxShadow(
                      color: HintText, offset: Offset(0, 4), blurRadius: 2),
                ],
              ),
              child: wikiText(
                hint: 'Mot de passe',
                label: 'Mot de passe',
                isPassword: true,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [],
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 60,
              child: WikiButtom(
                designation: "S'inscrire",
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: SingleTitle(
                singleTitle: "Vous avez un compter WiiQare?",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
