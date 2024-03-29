import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
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
            Expanded(
              child: StepCreateObjectif(
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
                        Expanded(
                          child: SizedBox(
                            // height: size.height * .2,
                            // width: size.width * .4,
                            child: WelcomItemsButtom(
                              size: size,
                              onPressed: () => {
                                ///
                                Navigator.pushNamed(context, Routes.sante)
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
                                        // height: 70,
                                        // width: 70,
                                        child: Image.asset(Pictures.Sante),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    SingleTitle(
                                      singleTitle: "Ma sante",
                                      color: Grey,
                                      // size: 11.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            // height: size.height * .2,
                            // width: size.width * .4,
                            child: WelcomItemsButtom(
                              size: size,
                              onPressed: () => {
                                ///
                                Navigator.pushNamed(context, Routes.diabete)
                              },
                              widget: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          // height: 70,
                                          // width: 70,
                                          child: Image.asset(Pictures.Diabete),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      SingleTitle(
                                        singleTitle: "Diabetes Hyperthension",
                                        color: Grey,
                                        //  size: 11.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: SizedBox(
                            // height: size.height * .2,
                            // width: size.width * .4,
                            child: WelcomItemsButtom(
                              size: size,
                              onPressed: () => {
                                ///
                                Navigator.pushNamed(context, Routes.famille)
                              },
                              widget: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          // height: 70,
                                          // width: 70,
                                          child: Image.asset(Pictures.Familly),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      SingleTitle(
                                        singleTitle: "Ma famille",
                                        color: Grey,

                                        ///  size: 11.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            // height: size.height * .2,
                            // width: size.width * .4,
                            child: WelcomItemsButtom(
                              size: size,
                              onPressed: () => {
                                ///
                                Navigator.pushNamed(context, Routes.grossesse)
                              },
                              widget: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          // height: 70,
                                          // width: 70,
                                          child:
                                              Image.asset(Pictures.Grossesse),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      SingleTitle(
                                        singleTitle: "Grossesse",
                                        color: Grey,
                                        // size: 11.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      height: 50,
                      child: WikiButtom(
                        descpritionButtom: "Suivant",
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.uiMontant);
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      height: 50,
                      child: WikiButtom(
                        descpritionButtom: "Retour",
                        color: White,
                        color2: WikiBleu,
                        colorBorder: WikiBleu,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
