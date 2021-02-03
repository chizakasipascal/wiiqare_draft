import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class DoctorCard extends StatelessWidget {
  final String name, autre, descrption;
  final Widget image;
  final Function onTap;
  const DoctorCard({
    Key key,
    @required this.size,
    this.name,
    this.autre,
    this.descrption,
    this.image,
    this.onTap,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        width: size.width,
        decoration: BoxDecoration(
          color: White,
          boxShadow: [
            BoxShadow(
              color: Grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
                height: size.height,
                width: 120,
                decoration: BoxDecoration(
                  color: Grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: image // Placeholder()
                // Image.asset(
                //   Pictures.Credit, //TODO:Image doctor
                //   fit: BoxFit.cover,
                // ),
                ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SingleTitle(
                  singleTitle: name, // "Dr Muhamund Nik Hassan",
                  size: 15.0,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_outline,
                      color: Yello,
                      size: 13,
                    ),
                    SingleTitle(
                      singleTitle: autre, //"4.5/27 Reviews",
                      size: 12.0,
                      color: Grey,
                    ),
                  ],
                ),
                SingleTitle(
                  singleTitle: descrption, //"Descprion",
                  size: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
