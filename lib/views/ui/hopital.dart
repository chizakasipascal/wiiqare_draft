import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Hopital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: White,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Grey,
            child: Icon(Icons.person),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleTitle(
              singleTitle: "Muhamed",
              size: 12.0,
            ),
            SizedBox(height: 5),
            SingleTitle(
              singleTitle: "Find your suitable doctor here",
              size: 12.0,
              color: Grey,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_today, color: BlueText),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: size.width,
                child: wikiText(
                  hint: "Chercher",
                  suffixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Grey,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              SingleTitle(
                singleTitle: "Specialist",
                fontWeight: FontWeight.bold,
                color: Grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
