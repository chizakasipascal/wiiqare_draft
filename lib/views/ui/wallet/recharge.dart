import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:wiiqare/views/tabsRecharge/tabsRecharge.dart';

class Recharge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: White,
        elevation: 0,
        title: SingleTitle(
          singleTitle: "Recharger",
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: BlueText),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  //  color: Colors.green,
                ),
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                margin: const EdgeInsets.only(right: 5, top: 5),
                child: TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    border: Border.all(color: BlueText, width: 2),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    ),
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
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Icon(
                                Icons.person,
                                color: BlueText,
                              ),
                              SizedBox(height: 5),
                              const SingleTitle(
                                singleTitle: "Personne",
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: BlueText,
                              ),
                              SizedBox(height: 5),
                              const SingleTitle(
                                singleTitle: "Banque",
                                fontWeight: FontWeight.bold,
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
                    physics: new NeverScrollableScrollPhysics(),
                    children: [Personne(), Banque()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
