import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Welcome extends StatelessWidget {
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
                  child: WelcomWhishWithButtomLogin(),
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
                      SizedBox(
                        height: 100,
                        width: 90,
                        child: WelcomItemsButtom(
                          size: size,
                          color: BlueText,
                          widget: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  ),
                ),
                SizedBox(
                  width: size.width,
                  child: WelcomItemsButtom(
                    size: size,
                    background: Color(0xFFEEF3F3),
                    color: Colors.transparent,
                    widget: Stack(
                      children: [
                        Positioned(
                          bottom: 0.0,
                          child: Container(
                            width: size.width,
                            height: 50.0,
                            color: White.withOpacity(.7),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: size.width * .6,
                                  child: SingleTitle(
                                    singleTitle:
                                        "Commander ce produit et gagner 1000fc de credit santé dans votre compte Wiiqare",
                                    color: Grey,
                                    size: 11.0,
                                  ),
                                ),
                                FlatButton(
                                  color: Yello,
                                  onPressed: () {
                                    //TODO:Code de commande de produit
                                  },
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: White,
                                    ), //Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: SingleTitle(
                                    singleTitle: "Commander les produits",
                                    size: 10.0,
                                    color: White,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
