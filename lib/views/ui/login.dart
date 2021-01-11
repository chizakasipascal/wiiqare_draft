import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 150.0,
                  child: Placeholder(),
                ),
                Spacer(),
                TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  labelPadding: const EdgeInsets.only(left: 5, right: 5),
                  labelStyle: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF8F8F8F),
                  ),
                  tabs: [
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
                            "Ventes",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff525A6C),
                            ),
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
                            "Achats",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff525A6C),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: TabBarView(
                      children: [Text("data"), Text("date 2")],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
