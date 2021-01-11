import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0),
          Text(
            "Créer un compte",
            style: TextStyle(
              color: BlueText,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 20.0),
          //Nom complet
          Container(
            decoration: BoxDecoration(
              color: White,
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
                BoxShadow(color: HintText, offset: Offset(0, 4), blurRadius: 2),
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
              boxShadow: [
                BoxShadow(color: HintText, offset: Offset(0, 4), blurRadius: 2),
              ],
            ),
            child: wikiText(
                hint: 'Mot de passe', label: 'Mot de passe', isPassword: true),
          ),
        ],
      ),
    );
  }
}
