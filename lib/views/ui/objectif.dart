import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class Objectifs extends StatefulWidget {
  @override
  _ObjectifsState createState() => _ObjectifsState();
}

class _ObjectifsState extends State<Objectifs> {
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
            SizedBox(height: 10),
            Center(
              child: SingleTitle(
                singleTitle: "Vous pouvez commencer par créer votre objectifs",
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: Placeholder(),
              //  Image.asset(
              //   Pictures.ObjectiSVG,
              //   fit: BoxFit.cover,
              // ),
            ),
            WikiButtom(
              descpritionButtom: "Créer ton objectif",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class WikiObjectifItemBar extends StatelessWidget {
  final descriptin, valeur, type;
  const WikiObjectifItemBar({
    Key key,
    this.descriptin,
    this.valeur,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleTitle(
              singleTitle: descriptin, //TODO:Remplacer par le montat du compte
              color: White,
            ),
            SingleTitle(
              singleTitle:
                  "${valeur}${type}", //TODO:Remplacer par le montat du compte
              color: White,
            ),
          ],
        ),
      ),
    );
  }
}