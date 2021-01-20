import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ModePayement extends StatefulWidget {
  @override
  _ModePayementState createState() => _ModePayementState();
}

class _ModePayementState extends State<ModePayement> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * .7,
            child: WelcomBackGround(
              widget: Center(
                child: Icon(
                  Icons.qr_code_scanner,
                  size: size.height * .4,
                ),
              ),
            ),
          ),
          Container(
            color: White,
            height: size.height * .3,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
                    SingleTitle(singleTitle: "Autre methdodes de paiement"),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Material(
                                color: BlueText.withOpacity(.4),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.phone_android,
                                    color: Bleu,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            SingleTitle(singleTitle: "Numero de telephone")
                          ],
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Material(
                                color: BlueText.withOpacity(.4),
                                child: IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.barcode,
                                    color: Bleu,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            SingleTitle(singleTitle: "Barcode")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Yello,
                        child: IconButton(
                          icon: Icon(
                            Icons.qr_code_scanner,
                            color: Bleu,
                          ),
                          onPressed: () => Navigator.pushNamed(
                              context, Routes.qRCodeScanner),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
