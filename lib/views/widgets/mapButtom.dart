import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class MapButtom extends StatelessWidget {
  final String description;
  final Function onTap;
  final Widget widget;
  const MapButtom({
    Key key,
    this.description,
    this.onTap,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          // height: 80,
          //width: 60,
          constraints: BoxConstraints(minHeight: 80, minWidth: 80),
          decoration: BoxDecoration(
            color: White,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: widget, //  Placeholder(),
              ),
              SingleTitle(
                singleTitle: description, // "Acceuil",
                fontWeight: FontWeight.w500,
                size: 11.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
