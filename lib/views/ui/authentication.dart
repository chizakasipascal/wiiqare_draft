import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/tabs/tabs.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
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
                          child: Text(
                            "WiiQare",
                            style: TextStyle(
                                color: BlueText, fontWeight: FontWeight.w700),
                          ),
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
                          physics: BouncingScrollPhysics(),
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