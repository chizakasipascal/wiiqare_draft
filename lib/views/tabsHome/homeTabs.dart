import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:wiiqare/views/widgets/wikiItemHome.dart';
import 'package:wiiqare/views/widgets/wikiOffres.dart';

class HomeTabs extends StatefulWidget {
  @override
  _HomeTabsState createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  double percent;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    setState(() {
      percent = 35;
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackGroundHome(
          size: size,
          widget: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SingleTitle(
                  singleTitle: "Mon objectif : 50.000 Fc par semaine",
                  color: White,
                ),
                RoundedProgressBar(
                  height: 20,
                  childCenter: SingleTitle(
                    singleTitle:
                        "${percent}", //TODO:Le pourcentage de la bar de progresse
                  ),
                  style:
                      RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
                  margin: EdgeInsets.symmetric(vertical: 16),
                  borderRadius: BorderRadius.circular(24),
                  percent: percent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    WikiButtom(
                      descpritionButtom: "Recharge",
                      color: Yello,
                      onPressed: () {
                        //TODO:Mettre le code recharge aproprie
                      },
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Yello),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SingleTitle(
                                singleTitle:
                                    "Compte sant:", //TODO:Remplacer par le montat du compte
                                color: White,
                              ),
                              SingleTitle(
                                singleTitle:
                                    "1500 Fc", //TODO:Remplacer par le montat du compte
                                color: White,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        //   SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleTitle(
            singleTitle: "Prenez soin de vous",
            fontWeight: FontWeight.bold,
            color: Bleu,
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WikiImtesHome(
              icon: Icon(Icons.headset_mic),
              chaine: "Sport",
              onPressed: () {},
            ),
            WikiImtesHome(
              icon: Icon(Icons.headset_mic),
              chaine: "Consultation",
              onPressed: () {},
            ),
            WikiImtesHome(
              icon: Icon(Icons.headset_mic),
              chaine: "Pharmacie",
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WikiImtesHome(
              icon: Icon(Icons.headset_mic),
              chaine: "Prevention",
              onPressed: () {},
            ),
            WikiImtesHome(
              icon: Icon(Icons.headset_mic),
              chaine: "Hospitaux",
              onPressed: () {},
            ),
            WikiImtesHome(
              icon: Icon(Icons.headset_mic),
              chaine: "Labo",
              onPressed: () {},
            ),
          ],
        ),

        SizedBox(height: 5),
        Row(
          children: [
            SizedBox(width: 15),
            SingleTitle(
              singleTitle: "Gagnez des credits sante?",
              size: 10.0,
            ),
            Spacer(),
            Row(
              children: [
                SingleTitle(
                  singleTitle: "Voir plus",
                  size: 10.0,
                  color: BlackText,
                ),
                SizedBox(
                  height: 10,
                  width: 15,
                  child: Lottie.asset(Pictures.ScrollerRight),
                ),
              ],
            ),
            SizedBox(width: 15),
          ],
        ),
        Container(
          height: 190,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, i) => new Container(
              // height: 300.0,
              // margin: const EdgeInsets.only(top: 20),
              // color: Colors.greenAccent,

              child: WikiOffres(
                size: MediaQuery.of(context).size,
                bonus: 1000,
                onPressed: () {
                  //TODO: Code propres aceete fonction
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
