import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class HomeRecharge extends StatefulWidget {
  @override
  _HomeRechargeState createState() => _HomeRechargeState();
}

class _HomeRechargeState extends State<HomeRecharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: White,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: BlueText,
          ),
          onPressed: () {},
        ),
        title: SingleTitle(singleTitle: "Recharger"),
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
