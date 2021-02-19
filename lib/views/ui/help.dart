import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/welcomWhishWithButtomLogin.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/widgets/wikiOffres.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  var montant = 20000000;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    //_showPersBottomSheetCallBack = _showPersBottomSheet;
  }

  guideModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.phone),
              title: SingleTitle(
                singleTitle: "WiiQare",
              ),
            ),
          ],
        );
      },
    );
  }

  // void _showPersBottomSheet() {
  //   setState(() {
  //     _showPersBottomSheetCallBack = null;
  //   });
  //   _scaffoldKey.currentState
  //       .showBottomSheet((context) {
  //         return ListView.builder(
  //           itemCount: 60,
  //           itemBuilder: (context, i) => new Container(
  //             // height: 300.0,
  //             margin: const EdgeInsets.only(top: 20),
  //             // color: Colors.greenAccent,

  //             child: WikiOffres(
  //               size: MediaQuery.of(context).size,
  //               bonus: 1000,
  //               onPressed: () {
  //                 //TODO: Code propres aceete fonction
  //               },
  //             ),
  //           ),
  //         );
  //       })
  //       .closed
  //       .whenComplete(() {
  //         if (mounted) {
  //           setState(() {
  //             _showPersBottomSheetCallBack = _showPersBottomSheet;
  //           });
  //         }
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double height = .2;
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
                      //TODO:Code de navigator from help page
                      Navigator.pushNamed(context, Routes.home)
                    },
                  },
                ),
              ),
              // Spacer(),
              SizedBox(height: size.height * .23),

              ///

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: WelcomItemsButtom(
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
                                  height: 100,
                                  width: 100,
                                  child:
                                      CircleAvatar(backgroundColor: BlueText),
                                ),
                              ),
                              SizedBox(height: 5),
                              SingleTitle(
                                singleTitle: "Salut",
                                color: Grey,
                                // size: 11.0,
                              ),
                              SingleTitle(
                                singleTitle: "Christopher Bengangine",
                                color: Grey,
                                // size: 11.0,
                              ),
                              SizedBox(height: 5),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SingleTitle(
                                      singleTitle: "Votre solde est:",
                                      color: Grey,
                                      //  size: 12.0,
                                    ),
                                    SizedBox(height: 10),
                                    // getMontant
                                    Text(
                                      "${montant}FC",
                                      style: TextStyle(
                                        color: BlueText,
                                        fontWeight: FontWeight.bold,
                                        // fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          children: [
                            SizedBox(
                              width: size.width * .5,
                              child: WelcomItemsButtom(
                                size: size,
                                widget: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, top: 5.0),
                                        child: SingleTitle(
                                          singleTitle: "Enligne",
                                          color: Colors.green,
                                          size: 10.0,
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
                                          Expanded(
                                            child: Center(
                                              child: Container(
                                                height: 60,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                  color: BlueText,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      bottom: 0,
                                                      right: 5,
                                                      child: Container(
                                                        height: 10,
                                                        width: 10,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.green,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SingleTitle(
                                                singleTitle: "Dr",
                                                color: Grey,
                                                //size: 11.0,
                                              ),
                                              SingleTitle(
                                                singleTitle: "Robert  M.",
                                                color: Grey,
                                                // size: 11.0,
                                              ),
                                              SingleTitle(
                                                singleTitle:
                                                    "Salut Avez-vous", //
                                                color: Grey,
                                                //  size: 10.0,
                                              ),
                                              SingleTitle(
                                                singleTitle:
                                                    "besoin d’assistance?",
                                                color: Grey,
                                                //  size: 10.0,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  // height: 100,
                                  // width: 90,
                                  child: InkWell(
                                    onTap: () {
                                      guideModalSheet(context);
                                    },
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
                                                backgroundColor:
                                                    Colors.transparent,
                                                child:
                                                    Image.asset(Pictures.Guide),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SingleTitle(
                                              singleTitle: "Guide",
                                              //  size: 10.0,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  // height: 100,
                                  // width: 90,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.pharmacie);
                                    },
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
                                                backgroundColor:
                                                    Colors.transparent,
                                                child:
                                                    Image.asset(Pictures.MAP),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            SingleTitle(
                                              singleTitle: "Map",
                                              //  size: 10.0,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ///
            ],
          ),
          DraggableScrollableSheet(
            // maxChildSize: 0.9,
            initialChildSize: height.toDouble(),
            minChildSize: height.toDouble(),
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: White,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 6,
                  // physics: BouncingScrollPhysics(),
                  itemBuilder: (context, i) => new Container(
                    // height: 300.0,
                    //  margin: const EdgeInsets.only(top: 9),
                    // color: Colors.greenAccent,

                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: WikiOffres(
                        size: MediaQuery.of(context).size,
                        bonus: 1000,
                        onPressed: () {
                          //TODO: Code propres aceete fonction
                        },
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
