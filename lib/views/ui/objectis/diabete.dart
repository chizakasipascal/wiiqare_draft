import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import '../../../models/diabte.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:wiiqare/views/widgets/objectifWidgets/montantSetp.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Diabete extends StatefulWidget {
  @override
  _DiabeteState createState() => _DiabeteState();
}

class _DiabeteState extends State<Diabete> {
  List<DiabeteCombo> _diabetes = DiabeteCombo.getComboDiabteMois();
  List<DiabeteCombo> _diabetesJours = DiabeteCombo.getComboDiabteJours();
  List<DropdownMenuItem<DiabeteCombo>> _dropdownMenuItems;

  DiabeteCombo _selectedMois;


  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_diabetes);
    _selectedMois = _dropdownMenuItems[0].value;

    super.initState();
  }

  List<DropdownMenuItem<DiabeteCombo>> buildDropdownMenuItems(List diabetes) {
    List<DropdownMenuItem<DiabeteCombo>> items = List();
    for (DiabeteCombo diabete in diabetes) {
      items.add(
        DropdownMenuItem(
          value: diabete,
          child: Text(diabete.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(DiabeteCombo selectedMois) {
    setState(() {
      _selectedMois = selectedMois;
    });
  }

  double percent;
  bool valeur = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    setState(() {
      percent = 35;
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackGroundHome(
              size: size,
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundedProgressBar(
                      height: 20,
                      childCenter: SingleTitle(
                        singleTitle:
                            "${percent}", //TODO:Le pourcentage de la bar de progresse
                      ),
                      style: RoundedProgressBarStyle(
                          borderWidth: 0, widthShadow: 0),
                      margin: EdgeInsets.symmetric(vertical: 16),
                      borderRadius: BorderRadius.circular(24),
                      percent: percent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WikiObjectifItemBar(
                          descriptin: "Mon compte",
                          valeur: 1500,
                          type: "FC",
                        ),
                        WikiObjectifItemBar(
                          descriptin: "Mes points",
                          valeur: 150,
                          type: "Points",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: size.height * .8,
        child: StepCreateObjectif(
          size: size,
          title: "Créer objectif pour ma maladie",
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleTitle(
                singleTitle: "Date de naissance",
                color: BlackText,
                fontWeight: FontWeight.bold,
              ),
              Container(
                width: size.width * .5,
                decoration: BoxDecoration(
                  color: Grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: wikiText(
                    hint: "Date de naissance",
                    //  label: "Date de naissance",
                    inputType: TextInputType.number),
              ),
              SizedBox(height: 10),
              SingleTitle(
                singleTitle:
                    "Depuis combien de temps été vous diabétique ou hypertendue?",
                color: BlackText,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              Container(
                width: size.width * .4,
                decoration: BoxDecoration(
                  color: Grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: DropdownButton(
                    style: TextStyle(fontSize: 10.0, color: BlueText),
                    hint: SingleTitle(
                      singleTitle: "Selection",
                      size: 10.0,
                    ),
                    value: _selectedMois,
                    items: _dropdownMenuItems,
                    onChanged: onChangeDropdownItem,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleTitle(
                        singleTitle: "Montant ",
                        color: BlackText,
                        fontWeight: FontWeight.bold,
                      ),
                      Container(
                        width: size.width * .4,
                        decoration: BoxDecoration(
                          color: Grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: wikiText(
                            hint: "Date de naissance",
                            //  label: "Date de naissance",
                            inputType: TextInputType.number),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleTitle(
                        singleTitle: "Choisir frequence ",
                        color: BlackText,
                        fontWeight: FontWeight.bold,
                      ),
                      Container(
                        width: size.width * .4,
                        decoration: BoxDecoration(
                          color: Grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: DropdownButton(
                            style: TextStyle(fontSize: 10.0, color: BlueText),
                            hint: SingleTitle(
                              singleTitle: "Selection",
                              size: 10.0,
                            ),
                            value: _selectedMois,
                            items: _dropdownMenuItems,
                            onChanged: onChangeDropdownItem,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: MontantSetp(
                  montant: "150 FCFA",
                  duree: "${_selectedMois.name}",
                  value: false,
                  onTap: () {
                    setState(() {
                      //TODO : Update value to bol
                    });
                  },
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 50,
                child: WikiButtom(
                  descpritionButtom: "Suivant",
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 50,
                child: WikiButtom(
                  descpritionButtom: "Retour",
                  color: White,
                  color2: Yello,
                  colorBorder: Yello,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
