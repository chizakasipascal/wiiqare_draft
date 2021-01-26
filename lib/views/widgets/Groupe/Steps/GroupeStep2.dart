import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class GroupeStep2 extends StatelessWidget {
  const GroupeStep2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleTitle(
          singleTitle:
              "Comment voulez-vous que l’argent soit utiliser en cas de maladie",
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SingleTitle(
              singleTitle: "1.1 :",
              color: Grey,
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: White,
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40.0,
                  child: Center(
                    child: SingleTitle(
                      singleTitle:
                          "Chaque membre consomme uniquement sa contribution",
                      textAlign: TextAlign.center,
                      color: Grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SingleTitle(
              singleTitle: "1.2 :",
              color: Grey,
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: White,
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40.0,
                  child: Center(
                    child: SingleTitle(
                      singleTitle:
                          "Chaque membre peut uttiliser jusqu’a 2 fois Sa contribution pour sa sante",
                      textAlign: TextAlign.center,
                      color: Grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SingleTitle(
              singleTitle: "1.3 :",
              color: Grey,
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: White,
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40.0,
                  child: Center(
                    child: SingleTitle(
                      singleTitle:
                          "Chaque membre peut uttiliser jusqu’a 3 fois Sa contribution pour sa sante",
                      textAlign: TextAlign.center,
                      color: Grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SingleTitle(
              singleTitle: "1.4 :",
              color: Grey,
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: White,
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40.0,
                  child: Center(
                    child: SingleTitle(
                      singleTitle:
                          "Chaque membre peut uttiliser jusqu’a 4 fois Sa contribution pour sa sante",
                      textAlign: TextAlign.center,
                      color: Grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        SingleTitle(
          singleTitle:
              "Si a la fin de l’annee , vous n’avais pas utiliser l’argent du groupe Wiiqare vous récompense?",
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          color: Grey,
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SingleTitle(
              singleTitle: "25 %",
              color: Grey,
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: White,
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40.0,
                  child: Center(
                    child: SingleTitle(
                      singleTitle: "25% de l’argent du groupe est rembourse",
                      textAlign: TextAlign.center,
                      color: Grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SingleTitle(
              singleTitle: "50 %",
              color: Grey,
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: White,
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40.0,
                  child: Center(
                    child: SingleTitle(
                      singleTitle: "50% de l’argent du groupe est rembourse",
                      textAlign: TextAlign.center,
                      color: Grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            SingleTitle(
              singleTitle: "75 %",
              color: Grey,
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: White,
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40.0,
                  child: Center(
                    child: SingleTitle(
                      singleTitle: "75% de l’argent du groupe est rembourse",
                      textAlign: TextAlign.center,
                      color: Grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
