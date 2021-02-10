import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: SingleTitle(singleTitle: "Recharger"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RechargeItem(
                onTap: () {
                  Navigator.pushNamed(context, Routes.recompeseTabs);
                },
                title: "Gagne ds credits sante\navec nos partaineres",
              ),
              RechargeItem(
                onTap: () {
                  Navigator.pushNamed(context, Routes.recharge);
                },
                title: "Recharge votre compte \navec mobile money",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RechargeItem extends StatelessWidget {
  final Function onTap;
  final String title;
  const RechargeItem({
    Key key,
    this.onTap,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
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
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(10),
              child: Placeholder(),
            ),
            SingleTitle(
              singleTitle: title,
              fontWeight: FontWeight.bold,
            ),
            Spacer(),
            Icon(
              Icons.arrow_right,
              color: BlueText,
            )
          ],
        ),
      ),
    );
  }
}
