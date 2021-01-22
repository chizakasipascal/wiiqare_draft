import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/welcomWhishWithButtomLogin.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:wiiqare/views/widgets/wikiOffres.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPersBottomSheetCallBack = _showPersBottomSheet;
  }

  void _showPersBottomSheet() {
    setState(() {
      _showPersBottomSheetCallBack = null;
    });
    _scaffoldKey.currentState
        .showBottomSheet((context) {
          return ListView.builder(
            itemCount: 6,
            itemBuilder: (context, i) => new Container(
              height: 300.0,
              margin: const EdgeInsets.only(top: 20),
              // color: Colors.greenAccent,

              child: WikiOffres(
                size: MediaQuery.of(context).size,
                bonus: 1000,
                onPressed: () {
                  //TODO: Code propres aceete fonction
                },
              ),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPersBottomSheetCallBack = _showPersBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          WelcomBackGround(),
          //TODO:Image  in the background
          /* Center(
              child: Container(
                height: 100,
                width: 100,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: Pictures.WelcomImageBackGround,
                  placeholder: (context, url) =>
                      Center(child: Icon(Icons.image)),
                  errorWidget: (context, url, error) => Center(
                    child: Icon(Icons.error, color: Colors.red),
                  ),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),*/

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
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
              // Spacer(),
              SizedBox(height: 90),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
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
                                child: Image.asset(Pictures.Login),
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
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset(Pictures.Guide),
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
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset(Pictures.MAP),
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
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 220,
              child: Column(
                children: [
                  new GestureDetector(
                    onTap: _showPersBottomSheetCallBack,
                    child: new Container(
                      height: 220,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            color: Grey.withOpacity(.1),
                            height: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SingleTitle(
                                  singleTitle:
                                      "Cliquer pour voir plus d'offres",
                                  size: 9.0,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.arrow_upward,
                                  size: 14.0,
                                ),
                                SizedBox(width: 10.0)
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 10),
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
                  ),
                ],
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
