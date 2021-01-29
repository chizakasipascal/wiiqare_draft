import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

import 'package:wiiqare/views/widgets/Background/background.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wiiqare/views/widgets/wikiItemHome.dart';

class Wallets extends StatefulWidget {
  @override
  _WalletsState createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  var valeur;

  double percent = 10;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    setState(() {
      valeur = 3700;
    });

    return Stack(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackGroundHome(
          size: size,
          widget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleTitle(
                      singleTitle: "My total balance",
                      color: White,
                      size: 20.0,
                    ),
                    SingleTitle(
                      singleTitle: "${valeur} FC",
                      size: 20.0,
                      fontWeight: FontWeight.bold,
                      color: White,
                    )
                  ],
                ),
                Divider(
                  color: White,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WikiImtesHome(
                        icon: Image.asset(Pictures.Trasnfert),
                        chaine: "Transfert",
                        textColor: WikiBleu,
                        color: White,
                        border: WikiBleu,
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.transfert);
                        },
                      ),
                      WikiImtesHome(
                        icon: Image.asset(Pictures.Pay),
                        chaine: "Pay",
                        textColor: WikiBleu,
                        color: White,
                        border: WikiBleu,
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.pay);
                        },
                      ),
                      WikiImtesHome(
                        icon: Image.asset(Pictures.Recharge),
                        chaine: "Recharge",
                        textColor: WikiBleu,
                        color: White,
                        border: WikiBleu,
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.recharge);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 220),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  width: size.width,
                  height: size.height * .14,
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  decoration: BoxDecoration(
                      color: BlueText, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WikiImtesHome(
                        icon: Image.asset(Pictures.Credit),
                        chaine: "Credit",
                        textColor: WikiBleu,
                        color: White,
                        border: Colors.transparent,
                        onPressed: () {},
                      ),
                      WikiImtesHome(
                        icon: Image.asset(Pictures.Pay),
                        chaine: "Paie credit",
                        textColor: WikiBleu,
                        color: White,
                        border: Colors.transparent,
                        onPressed: () {},
                      ),
                      WikiImtesHome(
                        icon: Image.asset(Pictures.Sport),
                        chaine: "Sport",
                        textColor: WikiBleu,
                        color: White,
                        border: Colors.transparent,
                        onPressed: () {},
                      ),
                      WikiImtesHome(
                        icon: Image.asset(Pictures.Autre),
                        chaine: "Autre",
                        textColor: WikiBleu,
                        color: White,
                        border: Colors.transparent,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                  child: SingleTitle(
                    singleTitle: "Historique",
                    color: Bleu,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 360, left: 10.0, right: 10.0),
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
                      color: WikiBleu,
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
    );
  }
}
