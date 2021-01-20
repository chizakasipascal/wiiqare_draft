import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class Wallets extends StatefulWidget {
  @override
  _WalletsState createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  double percent = 10;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                ),
                RoundedProgressBar(
                  height: 20,
                  childCenter: SingleTitle(
                    singleTitle: "${percent}",
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
                          singleTitle: "Mon compte :1500 Fc",
                        ),
                        SizedBox(height: 5.0),
                        SingleTitle(
                          singleTitle: "Mes points:150 points",
                        ),
                      ],
                    ),
                    WikiButtom(
                      descpritionButtom: "Recharge",
                      color: Yello,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Text("Walte")
      ],
    );
  }
}
