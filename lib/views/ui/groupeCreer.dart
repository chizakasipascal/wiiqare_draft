import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

import 'package:wiiqare/views/widgets/Background/background.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wiiqare/views/widgets/wikiItemHome.dart';

class Creer extends StatefulWidget {
  @override
  _CreerState createState() => _CreerState();
}

class _CreerState extends State<Creer> {
  var valeur;

  double percent = 10;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    setState(() {
      valeur = 3700;
    });

    return Scaffold(
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * .2,
            color: BlueText,
            child: WikiAppBar(
              name: "Ebene jean",
            ),
          ),
          Container(
            height: size.height * .2,
            margin: const EdgeInsets.only(top: 80, left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              color: Bleu,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: White.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              height: 100,
              width: size.width,
              child: widget,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 250, left: 10.0, right: 10.0),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 60,
              itemBuilder: (BuildContext context, int index) => Container(
                height: 60.0,
                width: size.width,
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                margin: const EdgeInsets.only(bottom: 2.5, top: 2.5),
                decoration: BoxDecoration(
                  color: BlueText.withOpacity(.5),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                // selectedTileColor: BlueText,
                // leading: SizedBox(height: 50, width: 50, child: widget),
                child: ListTile(
                  leading: Icon(Icons.transform),
                  title: SingleTitle(
                    singleTitle: "Transfert",
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SingleTitle(
                        singleTitle: "2020-20-02",
                        size: 10.0,
                        color: BlackText,
                        fontWeight: FontWeight.w500,
                      ),
                      SingleTitle(
                        singleTitle: "Rercharger",
                        color: Yello,
                        size: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

