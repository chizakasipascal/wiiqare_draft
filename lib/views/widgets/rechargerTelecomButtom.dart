import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class RechargerTelecomButtom extends StatelessWidget {
  final Function onTap;
  final String name;
  final Color color;
  const RechargerTelecomButtom({
    Key key,
    @required this.size,
    @required this.onTap,
    @required this.name,
    @required this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * .4,
        height: 100,
        margin: const EdgeInsets.all(5.0),
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
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Placeholder(),
              ),
              SizedBox(height: 5),
              SingleTitle(
                singleTitle: name,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
