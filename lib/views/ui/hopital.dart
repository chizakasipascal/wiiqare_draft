import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/ui/labo.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Hopital extends StatefulWidget {
  @override
  _HopitalState createState() => _HopitalState();
}

class _HopitalState extends State<Hopital> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 48,
              color: BlueText,
              child: Column(
                children: [
                  //  WikiAppBar(name: "Jean"),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: White,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TabBar(
                                isScrollable: true,
                                indicatorColor: WikiBleu,
                                onTap: _getIndex(),
                                controller: _controller,
                                labelStyle: TextStyle(
                                  color: BlueText,
                                  fontSize: 14,
                                ),
                                indicatorSize: TabBarIndicatorSize.tab,
                                tabs: [
                                  Tab(
                                    child: Container(
                                      width: 100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Hotital",
                                          style: TextStyle(
                                            color: White,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      width: 100,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Laboratoire",
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
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: BACKGROUND,
                child: TabBarView(
                  controller: _controller,
                  physics: new NeverScrollableScrollPhysics(),
                  children: [Text("data"), Text("data")],
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
