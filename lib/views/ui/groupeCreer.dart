import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

import 'package:wiiqare/views/widgets/Background/background.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wiiqare/views/widgets/wikiItemHome.dart';

class Creer extends StatefulWidget {
  @override
  _CreerState createState() => _CreerState();
}

class _CreerState extends State<Creer> with SingleTickerProviderStateMixin {


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

  double percent = 10;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    setState(() {
      valeur = 3700;
    });

    return Scaffold(
      body: SafeArea(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: BlueText,
              height: 250,
            child: Align(
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
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: LogoWiiQare(size: size),
                          ),
                          Spacer(),
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
                                    "Se connecter",
                                    style: TextStyle(
                                      color: BlueText,
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
                                      "S'inscrire",
                                      style: TextStyle(
                                        color: BlueText,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
              ),

            ),),
            SizedBox(
              height: 180,
              child: BackGroundHome(
                size: size,
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SingleTitle(
                      singleTitle: "My total balance",
                    ),
                  ), ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 250, left: 10.0, right: 10.0),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 60,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 60.0,
                  width: size.width,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  margin: const EdgeInsets.only(bottom: 2.5, top: 2.5),
                  decoration: BoxDecoration(
                    color: BlueText.withOpacity(.5),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  // selectedTileColor: BlueText,
                  // leading: SizedBox(height: 50, width: 50, child: widget),
                  child: ListTile(
                    leading: Icon(Icons.transform),
                    title: SingleTitle(
                      singleTitle: "Transfert",
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleTitle(
                          singleTitle: "2020-20-02",
                          size: 10.0,
                          color: BlackText,
                          fontWeight: FontWeight.w500,
                        ),
                        SingleTitle(
                          singleTitle: "Rercharger",
                          color: Yello,
                          size: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
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

