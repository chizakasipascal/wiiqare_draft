import 'package:flutter/material.dart';

class LogoWiiQare extends StatelessWidget {
  const LogoWiiQare({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .3,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/logowiqqre.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
