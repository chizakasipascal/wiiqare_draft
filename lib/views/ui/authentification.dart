import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/tabs/tabs.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Authentification extends StatefulWidget {
  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
    );
  }
}
