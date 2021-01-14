import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class WikiAppBar extends StatelessWidget {
  final name;
  const WikiAppBar({
    Key key,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleTitle(
                singleTitle: "Hi, ${name}",
                fontWeight: FontWeight.bold,
                color: Bleu,
              ),
              SingleTitle(
                singleTitle: "Welcome to WiiQare",
                fontWeight: FontWeight.bold,
                color: Bleu,
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.notifications,
            color: Bleu,
          ),
          CircleAvatar(
            backgroundColor: BlueText,
          )
        ],
      ),
    );
  }
}
