import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class WiIQareCenterLogoWithIcons extends StatelessWidget {
  const WiIQareCenterLogoWithIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: IconButton(
            onPressed: () {
              //TODO:Code notification
            },
            icon: Icon(Icons.notifications, color: White),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: LogoWiiQare(size: size),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: IconButton(
            onPressed: () {
              //TODO:Code QCoder Scanner
              //TODO:NAvigation to QRCodeScanner
              Navigator.pushNamed(context, Routes.modePayement);
            },
            icon: Icon(Icons.qr_code, color: White),
          ),
        ),
      ],
    );
  }
}
