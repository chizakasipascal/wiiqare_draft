import 'package:flutter/material.dart';
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
          child: Placeholder(),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: LogoWiiQare(size: size),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: Placeholder(),
        ),
      ],
    );
  }
}
