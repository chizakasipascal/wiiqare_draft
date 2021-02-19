import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Parenage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .9,
                child: StepCreateObjectif(
                  size: size,
                  title: "Parraine et Gagne",
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: size.width,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: White,
                          boxShadow: [
                            BoxShadow(
                              color: Grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SingleTitle(
                                  singleTitle: "0",
                                  color: Red,
                                ),
                                SingleTitle(
                                  singleTitle: "Parraine accepte",
                                  color: Grey,
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 1,
                                color: Grey,
                              ),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SingleTitle(
                                  singleTitle: "0.0 points",
                                  color: Red,
                                ),
                                SingleTitle(
                                  singleTitle: "Parraine accepte",
                                  color: Grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: [
                          Container(
                            height: 130,
                            width: size.width * .4,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: White,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: SingleTitle(
                                      singleTitle: "50 poinst",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 100,
        width: size.width,
        decoration: BoxDecoration(
          color: White,
          boxShadow: [
            BoxShadow(
              color: Grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                //TODO:Code Share
              },
              child: Container(
                width: 150,
                height: 40,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Bleu,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleTitle(
                      singleTitle: "Refer & Earn",
                      color: White,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.share,
                      color: White,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
