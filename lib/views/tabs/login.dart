import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

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
            SizedBox(height: 50.0),
            GrandTitle(
              title: "Connexion a mon compte",
            ),
            SizedBox(height: 20.0),
            //Nom complet
            Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: WikiBleu,
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
            //Mot de passe
            Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: WikiBleu,
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
            SizedBox(
              height: 60,
              child: WikiButtom(
                descpritionButtom: "Se connecter",
                onPressed: () => {
                  // Code de traitement login
                  print("Se connecter"),
                  Navigator.pushNamed(context, Routes.welcome)
                },
              ),
            ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () => {
                //Code de recuperation mot de passe
                print("Mot de passe oublier ?")
              },
              child: Center(
                child: SingleTitle(
                  singleTitle: "Mot de passe oublier ?",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
