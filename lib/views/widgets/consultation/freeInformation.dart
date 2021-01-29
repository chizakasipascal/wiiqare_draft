import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class FreeInformation extends StatelessWidget {
  final Color color, priceColor;
  final VoidCallback onTap;
  final title, subtitle, price;
  const FreeInformation({
    Key key,
    @required this.size,
    this.color = Grey,
    this.title,
    this.subtitle,
    this.price = 0,
    this.priceColor = White,
    this.onTap,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: size.width,
        padding: const EdgeInsets.only(left: 10, right: 10),
        margin: const EdgeInsets.only(bottom: 3, top: 3),
        decoration: BoxDecoration(
          color: color.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Grey.withOpacity(.6), shape: BoxShape.circle),
              child: Icon(
                Icons.person,
                color: White,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleTitle(
                  singleTitle: "$title",
                  fontWeight: FontWeight.bold,
                ),
                SingleTitle(
                  singleTitle: "$subtitle",
                  color: BlueText.withOpacity(.4),
                ),
              ],
            ),
            Spacer(),
            Container(
              constraints: BoxConstraints(minHeight: 35, minWidth: 35),
              decoration: BoxDecoration(
                  color: Grey.withOpacity(.7), shape: BoxShape.circle),
              child: Center(
                child: SingleTitle(
                  singleTitle: "$price\$",
                  color: priceColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
