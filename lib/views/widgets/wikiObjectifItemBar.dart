import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class WikiObjectifItemBar extends StatelessWidget {
  final descriptin, valeur, type;
  const WikiObjectifItemBar({
    Key key,
    this.descriptin,
    this.valeur,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleTitle(
              singleTitle: descriptin, //TODO:Remplacer par le montat du compte
              color: White,
            ),
            SingleTitle(
              singleTitle:
                  "${valeur}${type}", //TODO:Remplacer par le montat du compte
              color: White,
            ),
          ],
        ),
      ),
    );
  }
}
