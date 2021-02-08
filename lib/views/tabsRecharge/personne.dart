import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Personne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleTitle(
                  singleTitle: "LOCAL",
                  color: Grey,
                  fontWeight: FontWeight.bold,
                ),
                Container(
                  height: 2,
                  width: size.width,
                  color: Bleu,
                )
              ],
            ),
            SizedBox(height: 10),
            SingleTitle(
              singleTitle: "Entre les details",
              fontWeight: FontWeight.bold,
              color: BlueText,
            ),
            SizedBox(height: 10),
            Container(
              width: size.width,
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
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wikiText(
                      label: "Entrez le nom ou  numero du destinataire",
                      suffixIcon: Icon(Icons.contact_phone),
                    ),
                    Divider(thickness: 2),
                    wikiText(
                      label: "Commentaires (Optionnels)",
                    ),
                    Divider(thickness: 2),
                    wikiText(
                        label: "Entre le montant",
                        inputType: TextInputType.number),
                    Divider(thickness: 2),
                    Row(
                      children: [
                        Icon(
                          Icons.sync,
                          color: Bleu,
                        ),
                        SizedBox(width: 10),
                        SingleTitle(singleTitle: "Basculer vers CDF")
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Grey,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SingleTitle(
                          singleTitle: "Retour",
                          color: Grey,
                          fontWeight: FontWeight.bold,
                        ),
                        Spacer(),
                        WikiButtom(
                          descpritionButtom: "Valider",
                          onPressed: () {
                            //TODO:Code to validation transfert
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
