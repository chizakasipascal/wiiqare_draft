import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class CreeObjectifs extends StatefulWidget {
  @override
  _CreeObjectifsState createState() => _CreeObjectifsState();
}

class _CreeObjectifsState extends State<CreeObjectifs> {
  double percent;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    setState(() {
      percent = 35;
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackGroundHome(
              size: size,
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundedProgressBar(
                      height: 20,
                      childCenter: SingleTitle(
                        singleTitle:
                            "${percent}", //TODO:Le pourcentage de la bar de progresse
                      ),
                      style: RoundedProgressBarStyle(
                          borderWidth: 0, widthShadow: 0),
                      margin: EdgeInsets.symmetric(vertical: 16),
                      borderRadius: BorderRadius.circular(24),
                      percent: percent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: size.height * .08,
                            decoration: BoxDecoration(
                              color: Yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: WikiObjectifItemBar(
                              descriptin: "Mon compte",
                              valeur: 1500,
                              type: "FC",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: size.height * .08,
                            decoration: BoxDecoration(
                              border: Border.all(color: Yellow),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: WikiObjectifItemBar(
                              descriptin: "Mes points",
                              valeur: 150,
                              type: "Points",
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
            Center(
              child: SingleTitle(
                singleTitle: "Vous pouvez commencer par créer votre objectifs",
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: Placeholder(),
                //  Image.asset(
                //   Pictures.ObjectiSVG,
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: size.height * .07,
        child: WikiButtom(
          descpritionButtom: "Créer ton objectif",
          onPressed: () {
            Navigator.pushNamed(context, Routes.objectifTYPE);
          },
        ),
      ),
    );
  }
}
