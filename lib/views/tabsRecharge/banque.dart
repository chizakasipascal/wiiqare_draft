import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Banque extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleTitle(
                  singleTitle: "BANQUES",
                  color: Grey,
                  fontWeight: FontWeight.bold,
                ),
                Container(
                  height: 2,
                  width: size.width,
                  color: Bleu,
                )
              ],
            ),
            SizedBox(height: 10),
            Wrap(
              children: [
                RechargerTelecomButtom(
                  size: size,
                  name: "Airtel",
                  color: Red,
                  onTap: () {},
                ),
                RechargerTelecomButtom(
                  size: size,
                  name: "VodaCom",
                  color: Red,
                  onTap: () {},
                ),
                RechargerTelecomButtom(
                  size: size,
                  name: "Orange",
                  color: Colors.deepOrange,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
