import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class HomeTabs extends StatefulWidget {
  @override
  _HomeTabsState createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  double percent;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    setState(() {
      percent = 35;
    });
    return Column(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SingleTitle(
                          singleTitle:
                              "Mon compte :1500 Fc", //TODO:Remplacer par le montat du compte
                          color: White,
                        ),
                        SizedBox(height: 5.0),
                        SingleTitle(
                          singleTitle:
                              "Mes points:50 points", //TODO:Remplacer par le nombre de point
                          color: White,
                        ),
                      ],
                    ),
                    WikiButtom(
                      descpritionButtom: "Recharge",
                      color: Yello,
                      onPressed: () {
                        //TODO:Mettre le code recharge aproprie
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Text("Home")
      ],
    );
  }
}
