import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Pharmacie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: White,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: BlueText),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Placeholder(), //TODO:Map
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: size.width,
              //  color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MapButtom(
                    description: "Acceuil",
                    widget: Placeholder(),
                    onTap: () {
                      //TODO: add Method form map d
                    },
                  ),
                  MapButtom(
                    description: "Compte",
                    widget: Placeholder(),
                    onTap: () {
                      //TODO: add Method form map d
                    },
                  ),
                  MapButtom(
                    description: "Mes RDV",
                    widget: Placeholder(),
                    onTap: () {
                      //TODO: add Method form map d
                    },
                  ),
                  MapButtom(
                    description: "Aider",
                    widget: Placeholder(),
                    onTap: () {
                      //TODO: add Method form map d
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
