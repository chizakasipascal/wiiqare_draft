import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Consiltation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleTitle(
                          singleTitle: "Dr Arsene",
                          size: 18.0,
                          color: Grey,
                          fontWeight: FontWeight.bold,
                        ),
                        SingleTitle(
                          singleTitle: "Cardialogue",
                          color: Grey,
                        ),
                        SingleTitle(
                          singleTitle: "Hopital genreal",
                          color: Grey,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
