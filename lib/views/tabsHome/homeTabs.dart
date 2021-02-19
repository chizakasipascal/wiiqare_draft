import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
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
    //final orientation = MediaQuery.of(context).orientation;
    setState(() {
      percent = 30;
    });
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackGroundHome(
            size: size,
            widget: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Mon objectif :',
                      style: TextStyle(
                        color: White,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' 50.000 Fc ',
                          style: TextStyle(
                              color: White,
                              //fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' par semaine ',
                          style: TextStyle(color: White),
                        )
                      ],
                    ),
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
                      Expanded(
                        child: SizedBox(
                          height: size.height * .08,
                          child: WikiButtom(
                            descpritionButtom: "Recharge",
                            color: WikiBleu,
                            onPressed: () {
                              //TODO:Mettre le code recharge aproprie
                              Navigator.pushNamed(context, Routes.homeRecharge);
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: size.height * .08,
                          decoration: BoxDecoration(
                              color: Yellow,
                              border: Border.all(color: Yellow),
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
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleTitle(
              singleTitle: "Prenez soin de vous",
              size: 15.0,
              fontWeight: FontWeight.bold,
              color: Bleu,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    WikiImtesHome(
                      icon: Image.asset(Pictures.Sport),
                      chaine: "Sport",
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.sport),
                      border: Colors.transparent,
                    ),
                    SizedBox(height: 8.0),
                    WikiImtesHome(
                      icon: Image.asset(Pictures.Prevention),
                      chaine: "Prevention",
                      onPressed: () =>
                          //  Navigator.pushNamed(context, Routes.prevention),
                          Navigator.pushNamed(context, Routes.hopital),
                      border: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    WikiImtesHome(
                      icon: Image.asset(Pictures.Consltation),
                      chaine: "Consultation",
                      onPressed: () => Navigator.pushNamed(
                          context, Routes.consiltationListeDoctor),
                      border: Colors.transparent,
                    ),
                    SizedBox(height: 8.0),
                    WikiImtesHome(
                      icon: Image.asset(Pictures.Hopital),
                      chaine: "Hospitaux",
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.hopital);
                      },
                      border: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    WikiImtesHome(
                      icon: Image.asset(Pictures.Pharmacie),
                      chaine: "Pharmacie",
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.pharmacie),
                      border: Colors.transparent,
                    ),
                    SizedBox(height: 8.0),
                    WikiImtesHome(
                      icon: Image.asset(Pictures.Familly),
                      chaine: "Parenage", //TODO:Icons Parenage
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.parainage),
                      border: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                SingleTitle(
                  singleTitle: "Gagnez des credits sante?",
                  fontWeight: FontWeight.bold,
                  size: 15.0,
                  color: Bleu,
                  //size: 10.0,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.recompeseTabs);
                  },
                  child: SingleTitle(
                    singleTitle: "Voir plus",
                    color: Grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height * .357,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, i) => WikiOffres(
                size: MediaQuery.of(context).size,
                bonus: 1000,
                onPressed: () {
                  //TODO: Code propres aceete fonction
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
