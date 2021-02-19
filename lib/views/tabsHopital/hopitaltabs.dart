import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class HopitalTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Placeholder(), //TODO:Map hopital
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: size.width,
              //  color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: MapButtom(
                      description: "Acceuil",
                      widget: Placeholder(),
                      onTap: () {
                        //TODO: add Method form map d

                        Navigator.pushNamed(context, Routes.home);
                      },
                    ),
                  ),
                  Expanded(
                    child: MapButtom(
                      description: "Compte",
                      widget: Placeholder(),
                      onTap: () {
                        //TODO: add Method form map d
                        Navigator.pushNamed(context, Routes.setting);
                      },
                    ),
                  ),
                  Expanded(
                    child: MapButtom(
                      description: "Rendez vous",
                      widget: Placeholder(),
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.consiltationListeDoctor);
                      },
                    ),
                  ),
                  Expanded(
                    child: MapButtom(
                      description: "Aider",
                      widget: Placeholder(),
                      onTap: () {
                        //TODO: add Method form map d

                        //TODO:Buttom Sheet (Call contact center,email contact centre ,visist facebook page,tweet us,,,,, Cancel )
                      },
                    ),
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
