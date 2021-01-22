import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackGroundHome(
          size: size,
          widget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleTitle(
                      singleTitle: "My total balance",
                    ),
                    SingleTitle(singleTitle: "${valeur} FC")
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
                        icon: Icon(
                          FontAwesomeIcons.exchangeAlt,
                          color: Yello,
                        ),
                        chaine: "Transfert",
                        textColor: Yello,
                        color: White,
                        border: Yello,
                        onPressed: () {},
                      ),
                      WikiImtesHome(
                        icon: Icon(
                          FontAwesomeIcons.qrcode,
                          color: Yello,
                        ),
                        chaine: "Pay",
                        textColor: Yello,
                        color: White,
                        border: Yello,
                        onPressed: () {},
                      ),
                      WikiImtesHome(
                        icon: Icon(
                          FontAwesomeIcons.moneyBill,
                          color: Yello,
                        ),
                        chaine: "Recharge",
                        textColor: Yello,
                        color: White,
                        border: Yello,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: size.width,
          height: size.height * .14,
          margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: BoxDecoration(
              color: BlueText, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WikiImtesHome(
                icon: Icon(
                  FontAwesomeIcons.exchangeAlt,
                  color: Yello,
                ),
                chaine: "Credit",
                textColor: Yello,
                color: White,
                border: Colors.transparent,
                onPressed: () {},
              ),
              WikiImtesHome(
                icon: Icon(
                  FontAwesomeIcons.qrcode,
                  color: Yello,
                ),
                chaine: "Paie credit",
                textColor: Yello,
                color: White,
                border: Colors.transparent,
                onPressed: () {},
              ),
              WikiImtesHome(
                icon: Image.asset(Pictures.Sport),
                chaine: "Sport",
                textColor: Yello,
                color: White,
                border: Colors.transparent,
                onPressed: () {},
              ),
              WikiImtesHome(
                icon: Icon(
                  FontAwesomeIcons.moneyBill,
                  color: Yello,
                ),
                chaine: "Autre",
                textColor: Yello,
                color: White,
                border: Colors.transparent,
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: SingleTitle(singleTitle: "Historique"),
        ),
        SizedBox(height: 10),
        // HistoriqueItem(
        //   widget: Placeholder(),
        //   title: "Transfert",
        //   date: 2020 - 20 - 2,
        //   typeDescption: "Recharge",
        // ),
      ],
    );
  }
}
