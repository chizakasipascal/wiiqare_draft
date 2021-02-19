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
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: Container(
        height: 38,
        width: size.width,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Bleu,
                ),
                CircleAvatar(
                  backgroundColor: Bleu,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
