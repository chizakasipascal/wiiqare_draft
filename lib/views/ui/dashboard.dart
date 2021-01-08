import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Doctor",
          style: TextStyle(color: WhiteColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
        child: Column(
          children: [
            Card(
              child: Container(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(height: 80.0, width: 80.0, child: CircleAvatar())
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
