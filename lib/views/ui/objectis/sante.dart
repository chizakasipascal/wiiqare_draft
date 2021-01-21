import 'package:flutter/material.dart';

import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

import 'package:wiiqare/views/widgets/widgets.dart';

class Sante extends StatefulWidget {
  @override
  _SanteState createState() => _SanteState();
}

class _SanteState extends State<Sante> {
  double percent;
  bool valeur = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                        WikiObjectifItemBar(
                          descriptin: "Mon compte",
                          valeur: 1500,
                          type: "FC",
                        ),
                        WikiObjectifItemBar(
                          descriptin: "Mes points",
                          valeur: 150,
                          type: "Points",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: size.height * .5,
        child: StepCreateObjectif(
          size: size,
          title: "Créer objectif pour ma sante",
          widget: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
