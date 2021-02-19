import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/Groupe/Steps/steps.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class UsesTabs extends StatefulWidget {
  @override
  _UsesTabsState createState() => _UsesTabsState();
}

class _UsesTabsState extends State<UsesTabs> {
  double percent;
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    setState(() {
      percent = 35;
    });
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
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
                            height: 90,
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
                            height: 90,
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
            DraggableScrollableSheet(
              // maxChildSize: 0.9,
              initialChildSize: 0.9,
              minChildSize: 0.9,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: White,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      //  color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Placeholder(),
                          ),
                          SizedBox(height: 10),
                          SingleTitle(
                            singleTitle:
                                "Créer un groupe santé est une bonne manier de se protege en cas de problème de santé grave",
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 10),
                          SingleTitle(
                            singleTitle:
                                "Comme pour une tautine ensemble on est plus motive",
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 80),
                          SizedBox(
                            height: 60.0,
                            child: WikiButtom(
                              descpritionButtom: "Je cree un groupe sante",
                              onPressed: () {
                                Navigator.pushNamed(context, Routes.goupe);
                              },
                              color: White,
                              color2: WikiBleu,
                              colorBorder: WikiBleu,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
