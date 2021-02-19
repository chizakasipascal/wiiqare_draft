import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/welcomItemsButtom.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

typedef OnPressed();

class WikiOffres extends StatelessWidget {
  final Size size;
  final bonus;
  final Widget widget;
  final OnPressed onPressed;
  const WikiOffres({
    Key key,
    @required this.size,
    @required this.bonus,
    @required this.onPressed,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: WelcomItemsButtom(
        size: size,
        // background: Colors.deepOrange,
        color: Colors.transparent,
        widget: Stack(
          children: [
            SizedBox(
              width: size.width,
              child: Image.asset(
                Pictures.OffresImages1,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: size.width,

                // height: 50.0,
                color: White.withOpacity(.7),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * .6,
                      child: SingleTitle(
                        singleTitle:
                            "Commander ce produit et gagner ${bonus}fc de credit santé dans votre compte Wiiqare",
                        color: Grey,
                        //size: 11.0,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: FlatButton(
                        color: WikiBleu,
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
                          //  size: 10.0,
                          color: White,
                        ),
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
