import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Pharmacie extends StatefulWidget {
  @override
  _PharmacieState createState() => _PharmacieState();
}

class _PharmacieState extends State<Pharmacie> {
  guideModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //TODO:Buttom Sheet (Call contact center,email contact centre ,
            //visist facebook page,tweet us,,,,, Cancel
            ListTile(
              leading: Icon(Icons.phone),
              title: SingleTitle(
                singleTitle: "Call contact center",
              ),
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: SingleTitle(
                singleTitle: "Email contact centre",
              ),
            ),

            ListTile(
              leading: Icon(Icons.mediation),
              title: SingleTitle(
                singleTitle: "Facebook",
              ),
            ),

            ListTile(
              leading: Icon(Icons.medical_services),
              title: SingleTitle(
                singleTitle: "tweet",
              ),
            ),
          ],
        );
      },
    );
  }

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
                      description: "Commande",
                      widget: Placeholder(),
                      onTap: () {
                        //TODO: add Method form map d
                      },
                    ),
                  ),
                  Expanded(
                    child: MapButtom(
                      description: "Aider",
                      widget: Placeholder(),
                      onTap: () {
                        //TODO: add Method form map d
                        guideModalSheet(context);
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
