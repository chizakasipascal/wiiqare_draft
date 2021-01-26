import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/tabsGroupe/tabsGroupe.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';

class RecompeseTabs extends StatefulWidget {
  @override
  _RecompeseTabsState createState() => _RecompeseTabsState();
}

class _RecompeseTabsState extends State<RecompeseTabs>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 2);

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
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 220,
            color: BlueText,
            child: Column(
              children: [
                WikiAppBar(name: "Jean"),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: Container(
                    height: 100,
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Expanded(
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              TabBar(
                                isScrollable: true,
                                indicatorColor: Yello,
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
                                        "Offres",
                                        style: TextStyle(
                                          color: White,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      width: 70,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Gagne bonus",
                                          style: TextStyle(
                                            color: White,
                                          ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _getIndex() {
    print("Index is ${_controller.index}");
  }
}
