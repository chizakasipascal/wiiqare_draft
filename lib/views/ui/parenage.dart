import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:wiiqare/views/widgets/objectifWidgets/montantSetp.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Parenage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .9,
                child: StepCreateObjectif(
                  size: size,
                  title: "Parraine et Gagne",
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SingleTitle(
                                  singleTitle: "0",
                                  color: Red,
                                ),
                                SingleTitle(
                                  singleTitle: "Parraine accepte",
                                  color: Grey,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 1,
                                color: Grey,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SingleTitle(
                                  singleTitle: "0.0 points",
                                  color: Red,
                                ),
                                SingleTitle(
                                  singleTitle: "Parraine accepte",
                                  color: Grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: [
                          Container(
                            height: 130,
                            width: size.width * .5,
                            decoration: BoxDecoration(
                              color: White,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 130,
                            width: size.width * .5,
                            decoration: BoxDecoration(
                              color: White,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
