import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/welcomWhishWithButtomLogin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/widgets/wikiOffres.dart';

class Welcome extends StatelessWidget {
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
                        print("Welcom to help"),
                        //TODO:Code de navigator from help page
                        Navigator.pushNamed(context, Routes.help)
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
                        onPressed: () => {
                          ///
                          Navigator.pushNamed(context, Routes.authentification)
                        },
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
                                  child: Icon(
                                    Icons.login,
                                    size: 50.0,
                                    color: Yello,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SingleTitle(
                                      singleTitle: "Créer un compte Wiiqare",
                                      color: Grey,
                                      size: 11.0,
                                    ),
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
                WikiOffres(
                  size: size,
                  bonus: 1000,
                  onPressed: () {
                    //Test de navigation to home
                    Navigator.pushNamed(context, Routes.home);

                    //TODO: Code propres aceete fonction
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
