import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class ObjectifsTYPE extends StatefulWidget {
  @override
  _ObjectifsTYPEState createState() => _ObjectifsTYPEState();
}

class _ObjectifsTYPEState extends State<ObjectifsTYPE> {
  double percent;

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
        title: "Créer objectif",
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleTitle(
              singleTitle:
                  "Definir votre objectif sante en fonction de votre situation personnelle",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: size.height * .2,
                  width: size.width * .4,
                  child: WelcomItemsButtom(
                    size: size,
                    onPressed: () => {
                      ///
                      Navigator.pushNamed(context, Routes.authentification)
                    },
                    widget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 70,
                                width: 70,
                                child: Placeholder(
                                  color: Yello,
                                )),
                          ),
                          SizedBox(height: 20),
                          SingleTitle(
                            singleTitle: "Ma sante",
                            color: Grey,
                            size: 11.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .2,
                  width: size.width * .4,
                  child: WelcomItemsButtom(
                    size: size,
                    onPressed: () => {
                      ///
                      Navigator.pushNamed(context, Routes.authentification)
                    },
                    widget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 70,
                                width: 70,
                                child: Placeholder(
                                  color: Yello,
                                )),
                          ),
                          SizedBox(height: 20),
                          SingleTitle(
                            singleTitle: "Diabetes Hyperthension",
                            color: Grey,
                            size: 11.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: size.height * .2,
                  width: size.width * .4,
                  child: WelcomItemsButtom(
                    size: size,
                    onPressed: () => {
                      ///
                      Navigator.pushNamed(context, Routes.authentification)
                    },
                    widget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 70,
                                width: 70,
                                child: Placeholder(
                                  color: Yello,
                                )),
                          ),
                          SizedBox(height: 20),
                          SingleTitle(
                            singleTitle: "Ma famille",
                            color: Grey,
                            size: 11.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .2,
                  width: size.width * .4,
                  child: WelcomItemsButtom(
                    size: size,
                    onPressed: () => {
                      ///
                      Navigator.pushNamed(context, Routes.authentification)
                    },
                    widget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 70,
                                width: 70,
                                child: Placeholder(
                                  color: Yello,
                                )),
                          ),
                          SizedBox(height: 20),
                          SingleTitle(
                            singleTitle: "Grossesse",
                            color: Grey,
                            size: 11.0,
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
    );
  }
}
