import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class StepCreateObjectif extends StatelessWidget {
  final String title;
  final Widget widget;
  const StepCreateObjectif({
    Key key,
    @required this.size,
    @required this.title,
    @required this.widget,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
      child: Container(
        height: size.height * .9,
        width: size.width,
        decoration: BoxDecoration(
          color: White,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              width: size.width,
              color: Yello,
              child: AppBar(
                centerTitle: true,
                backgroundColor: Yello,
                leading: IconButton(
                  icon: Icon(Icons.close_sharp, color: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: SingleTitle(singleTitle: title, size: 15.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: widget,
            )
          ],
        ),
      ),
    );
  }
}
