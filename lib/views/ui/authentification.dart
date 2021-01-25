import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/tabs/tabs.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Authentification extends StatefulWidget {
  final int index;

  const Authentification({Key key, this.index}) : super(key: key);
  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification>
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Expanded(
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
                              Login(),
                              Sincrire(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getIndex() {
    print("Index is ${_controller.index}");
  }
}
