import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/widgets/wikiButtonLoginLockroUnLock.dart';

class Welcome extends StatelessWidget {
  var montant = 2000.0000;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WelcomBackGround(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: WiIQareCenterLogoWithIcons(size: size),
                ),
                SizedBox(height: size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: WelcomWhishWithButtomLogin(),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    children: [
                      WelcomItemsButtom(
                        size: size,
                        widget: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Placeholder(color: Bleu)),
                              ),
                              SizedBox(height: 5),
                              SingleTitle(
                                singleTitle: "Salut",
                                color: Grey,
                              ),
                              SingleTitle(
                                singleTitle: "Christopher Bengangine",
                                color: Grey,
                              ),
                              SizedBox(height: 5),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SingleTitle(
                                      singleTitle: "Votre solde est:",
                                      color: Grey,
                                    ),

                                    // getMontant
                                    Text(
                                      "${montant}FC",
                                      style: TextStyle(
                                          color: BlueText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
