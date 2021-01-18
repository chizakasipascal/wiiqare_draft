import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/welcomWhishWithButtomLogin.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/widgets/wikiOffres.dart';

class Help extends StatelessWidget {
  var montant = 20000000;
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
                  child: WelcomWhishWithButtomLogin(
                    onPressed: () => {
                      {
                        //TODO:Code de navigator from welcom page
                        Navigator.pop(context, Routes.welcome)
                      },
                    },
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      WelcomItemsButtom(
                        size: size,
                        widget: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child:
                                      CircleAvatar(backgroundColor: BlueText),
                                ),
                              ),
                              SizedBox(height: 5),
                              SingleTitle(
                                singleTitle: "Salut",
                                color: Grey,
                                size: 11.0,
                              ),
                              SingleTitle(
                                singleTitle: "Christopher Bengangine",
                                color: Grey,
                                size: 11.0,
                              ),
                              SizedBox(height: 5),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SingleTitle(
                                      singleTitle: "Votre solde est:",
                                      color: Grey,
                                      size: 12.0,
                                    ),
                                    SizedBox(height: 10),
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
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 90,
                            width: size.width * .5,
                            child: WelcomItemsButtom(
                              size: size,
                              widget: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8.0, top: 5.0),
                                      child: SingleTitle(
                                        singleTitle: "Enligne",
                                        color: Colors.green,
                                        size: 8.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Center(
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: BlueText,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  bottom: 0,
                                                  right: 5,
                                                  child: Container(
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        100,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SingleTitle(
                                              singleTitle: "Dr",
                                              color: Grey,
                                              size: 11.0,
                                            ),
                                            SingleTitle(
                                              singleTitle: "Robert  M.",
                                              color: Grey,
                                              size: 11.0,
                                            ),
                                            SingleTitle(
                                              singleTitle: "Salut Avez-vous", //
                                              color: Grey,
                                              size: 10.0,
                                            ),
                                            SingleTitle(
                                              singleTitle:
                                                  "besoin d’assistance?",
                                              color: Grey,
                                              size: 10.0,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 90,
                                child: WelcomItemsButtom(
                                  size: size,
                                  color: BlueText,
                                  widget: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: CircleAvatar(
                                            backgroundColor: BlueText,
                                          ),
                                        ),
                                        SingleTitle(
                                          singleTitle: "Guide",
                                          size: 10.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                width: 90,
                                child: WelcomItemsButtom(
                                  size: size,
                                  color: BlueText,
                                  widget: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: CircleAvatar(
                                            backgroundColor: BlueText,
                                          ),
                                        ),
                                        SingleTitle(
                                          singleTitle: "Map",
                                          size: 10.0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                WikiOffres(
                  size: size,
                  bonus: 1000,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
