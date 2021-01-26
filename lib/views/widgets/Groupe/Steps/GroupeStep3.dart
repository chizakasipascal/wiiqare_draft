import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/ui/groupeCreer.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class GroupeStep3 extends StatelessWidget {
  const GroupeStep3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleTitle(
          singleTitle: "Selection les beneficaire.",
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.0),
        Flexible(
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: White,
              boxShadow: [
                BoxShadow(
                  color: Grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Flexible(
                      child: wikiText(hint: "Chercher les beneficaire."),
                    ),
                    Icon(
                      Icons.search,
                      color: BlueText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * .4,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 60,
            itemBuilder: (BuildContext context, int index) => Container(
              height: 60.0,
              width: size.width,
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              margin: const EdgeInsets.only(bottom: 2.5, top: 2.5),
              decoration: BoxDecoration(
                color: BlueText.withOpacity(.5),
                borderRadius: BorderRadius.circular(5.0),
              ),
              // selectedTileColor: BlueText,
              // leading: SizedBox(height: 50, width: 50, child: widget),
              child: ListTile(
                leading: Icon(Icons.transform),
                title: SingleTitle(
                  singleTitle: "Transfert",
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleTitle(
                      singleTitle: "2020-20-02",
                      size: 10.0,
                      color: BlackText,
                      fontWeight: FontWeight.w500,
                    ),
                    SingleTitle(
                      singleTitle: "Rercharger",
                      color: Yello,
                      size: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Creer()));
            // showDialog(
            //   context: context,
            //   builder: (BuildContext context) {
            //     return AlertDialog(
            //       title: Text("List de contact nos inscrit dans WiiQare"),
            //       content: Text("List vide"),
            //     );
            //   },
            // );
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_alarm),
              SizedBox(width: 8.0),
              SingleTitle(singleTitle: "Inviter le benificiaire")
            ],
          ),
        ),
      ],
    );
  }
}
