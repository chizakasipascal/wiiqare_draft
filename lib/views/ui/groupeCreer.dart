import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/tabsGroupe/tabsGroupe.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';

class Creer extends StatefulWidget {
  @override
  _CreerState createState() => _CreerState();
}

class _CreerState extends State<Creer> with SingleTickerProviderStateMixin {
  TabController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 3);

    _controller.addListener(_handleTabSelection);

    super.initState();
  }

  _handleTabSelection() {
    if (_controller.indexIsChanging) {
      setState(() {
        _currentIndex = _controller.index;
      });
    }
  }

  var valeur;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 260,
              color: BACKGROUND,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: WikiAppBar(name: "Jean"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 9.0, left: 10.0, right: 10.0),
                    child: Container(
                      height: 90,
                      width: size.width,
                      margin: const EdgeInsets.only(bottom: 5.0),
                      decoration: BoxDecoration(
                        color: Bleu,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: SingleTitle(
                          singleTitle: "Groupe solde actuel : 250.00 FC",
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                          color: White,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: size.width * .5,
                          child: Center(
                            child: SingleTitle(
                              singleTitle: "Contribution 100FC par semaine",
                              textAlign: TextAlign.center,
                              color: BlueText,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: size.width * .5,
                          color: Colors.red,
                          child: Center(
                            child: SingleTitle(
                              singleTitle: "Couverture 1.3",
                              color: White,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: DefaultTabController(
                        length: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                TabBar(
                                  isScrollable: true,
                                  indicatorColor: BlueText,
                                  onTap: _getIndex(),
                                  controller: _controller,
                                  labelStyle: TextStyle(
                                    color: BlueText,
                                    fontSize: 14,
                                  ),
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  tabs: [
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Membres",
                                          style: TextStyle(
                                            color: BlueText,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Historique",
                                          style: TextStyle(
                                            color: BlueText,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Depense",
                                          style: TextStyle(
                                            color: BlueText,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _controller,
                  physics: new NeverScrollableScrollPhysics(),
                  children: [
                    Members(),
                    Historique(),
                    Depense(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getIndex() {
    print("Index is ${_controller.index}");
  }
}

// Expanded(
//                         child: Container(
//                           child: TabBarView(
//                             controller: _controller,
//                             physics: new NeverScrollableScrollPhysics(),
//                             children: [
//                               Members(),
//                               Historique(),
//                               Depense(),
//                             ],
//                           ),
//                         ),
//                       ),
