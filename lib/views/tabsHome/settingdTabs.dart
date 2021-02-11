import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class SettingdTabs extends StatefulWidget {
  @override
  _SettingdTabsState createState() => _SettingdTabsState();
}

class _SettingdTabsState extends State<SettingdTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpandeItemSetting(
                title: "Bienvenue Zigabe mugomba",
                tage: "@zibage",
                children: [
                  SingleTitle(
                    singleTitle: "@bienvenuezigabe",
                    color: Grey,
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: White,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ExpandeItemSetting(
                      title: "Compte",
                      tage: "",
                      children: [
                        SingleTitle(
                          singleTitle: "data",
                          color: Grey,
                        ),
                      ],
                    ),
                    ExpandeItemSetting(
                      title: "Partenaire",
                      tage: "",
                      children: [
                        SingleTitle(
                          singleTitle: "data",
                          color: Grey,
                        ),
                      ],
                    ),
                    ExpandeItemSetting(
                      title: "Aide et assistance",
                      tage: "",
                      children: [
                        SingleTitle(
                          singleTitle: "data",
                          color: Grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: White,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ExpandeItemSetting(
                      title: "Commande carte",
                      tage: "",
                      children: [
                        SingleTitle(
                          singleTitle: "data",
                          color: Grey,
                        ),
                      ],
                    ),
                    ExpandeItemSetting(
                      title: "Reglages",
                      tage: "",
                      children: [
                        SingleTitle(
                          singleTitle: "data",
                          color: Grey,
                        ),
                      ],
                    ),
                    ExpandeItemSetting(
                      title: "Apropos",
                      tage: "",
                      children: [
                        SingleTitle(
                          singleTitle: "data",
                          color: Grey,
                        ),
                      ],
                    ),
                    ExpandeItemSetting(
                      title: "Evalues nous",
                      tage: "",
                      children: [
                        SingleTitle(
                          singleTitle: "data",
                          color: Grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
