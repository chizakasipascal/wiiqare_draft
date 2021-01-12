import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class WikiButtom extends StatelessWidget {
  final designation;
  final void function;
  const WikiButtom({
    Key key,
    @required this.designation,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        //side: BorderSide(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Yello,
      onPressed: () => function,
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
