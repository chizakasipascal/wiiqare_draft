import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class WikiButtom extends StatelessWidget {
  final designation;
  const WikiButtom({
    Key key,
    @required this.designation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        //side: BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Yello,
      onPressed: () {},
      child: Center(
        child: Text(
          designation,
          style: TextStyle(
            color: White,
          ),
        ),
      ),
    );
  }
}
