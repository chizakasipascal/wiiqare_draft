import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

typedef OnPressed();

class WikiOffres extends StatelessWidget {
  final Size size;
  final bonus;
  final OnPressed onPressed;
  const WikiOffres({
    Key key,
    @required this.size,
    @required this.bonus,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: WelcomItemsButtom(
        size: size,
        background: Color(0xFFEEF3F3),
        color: Colors.transparent,
        widget: Stack(
          children: [
            Positioned(
              bottom: 0.0,
              child: Container(
                width: size.width,
                height: 50.0,
                color: White.withOpacity(.7),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * .6,
                      child: SingleTitle(
                        singleTitle:
                            "Commander ce produit et gagner ${bonus}fc de credit santé dans votre compte Wiiqare",
                        color: Grey,
                        size: 11.0,
                      ),
                    ),
                    FlatButton(
                      color: Yello,
                      onPressed: onPressed,
                      //TODO:Code de commande de produit

                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: White,
                        ), //Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SingleTitle(
                        singleTitle: "Commander les produits",
                        size: 10.0,
                        color: White,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
