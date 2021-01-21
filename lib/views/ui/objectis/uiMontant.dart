import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:wiiqare/views/widgets/objectifWidgets/montantSetp.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class UIMontant extends StatefulWidget {
  @override
  _UIMontantState createState() => _UIMontantState();
}

class _UIMontantState extends State<UIMontant> {
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
      bottomSheet: StepCreateObjectif(
        size: size,
        title: "Définir montant objectif",
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleTitle(
              singleTitle: "Choissez la fréquence adapetee a votre situation",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: size.height * .5,
                width: size.width * .9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MontantSetp(
                      montant: "150 FCFA",
                      duree: "Par jour",
                      value: false,
                      onTap: () {
                        setState(() {
                          //TODO : Update value to bol
                        });
                      },
                    ),
                    Divider(),
                    MontantSetp(
                      montant: "447 FCFA",
                      duree: "Par semaine",
                      value: false,
                      onTap: () {
                        setState(() {
                          //TODO : Update value to bol
                        });
                      },
                    ),
                    Divider(),
                    MontantSetp(
                      montant: "447 FCFA",
                      duree: "Chaque deux semaine",
                      value: false,
                      onTap: () {
                        setState(() {
                          //TODO : Update value to bol
                        });
                      },
                    ),
                    Divider(),
                    MontantSetp(
                      montant: "447 FCFA",
                      duree: "Chaque mois",
                      value: false,
                      onTap: () {
                        setState(() {
                          //TODO : Update value to bol
                        });
                      },
                    ),
                    Divider(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
