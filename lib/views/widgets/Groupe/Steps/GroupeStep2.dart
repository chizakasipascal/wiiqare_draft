import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class GroupeStep2 extends StatelessWidget {
  const GroupeStep2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleTitle(
          singleTitle:
              "Créer un groupe santé est une bonne manier de se protege en cas de problème de santé grave",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
