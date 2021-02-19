import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/tabsHopital/tabsHopital.dart';

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
              width: size.width,
              color: Colors.red,
              child: Container(
                height: 48,
                width: size.width,
                color: BlueText,
                child: Stack(
                  children: [
                    //  WikiAppBar(name: "Jean"),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: White,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Center(
                      child: DefaultTabController(
                        length: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: BACKGROUND,
                child: TabBarView(
                  controller: _controller,
                  physics: new NeverScrollableScrollPhysics(),
                  children: [HopitalTabs(), LaboTabs()],
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
