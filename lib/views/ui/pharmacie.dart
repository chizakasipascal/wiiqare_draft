import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Pharmacie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BlueText,
        title: SingleTitle(
          singleTitle: "Pharmacie",
          color: White,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: White),
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

                      Navigator.pushNamed(context, Routes.home);
                    },
                  ),
                  MapButtom(
                    description: "Compte",
                    widget: Placeholder(),
                    onTap: () {
                      //TODO: add Method form map d
                      Navigator.pushNamed(context, Routes.setting);
                    },
                  ),
                  MapButtom(
                    description: "Commande",
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

                      //TODO:Buttom Sheet (Call contact center,email contact centre ,visist facebook page,tweet us,,,,, Cancel )
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
