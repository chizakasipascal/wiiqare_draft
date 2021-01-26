import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import '../../../models/comboxSante.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:wiiqare/views/widgets/objectifWidgets/montantSetp.dart';

import 'package:wiiqare/views/widgets/widgets.dart';

class Sante extends StatefulWidget {
  @override
  _SanteState createState() => _SanteState();
}

class _SanteState extends State<Sante> {
  List<ComboSante> _santesss = ComboSante.getComboSante();
  List<DropdownMenuItem<ComboSante>> _dropdownMenuItems;
  ComboSante _selectedSanteDure;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_santesss);
    _selectedSanteDure = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<ComboSante>> buildDropdownMenuItems(List santes) {
    List<DropdownMenuItem<ComboSante>> items = List();
    for (ComboSante sante in santes) {
      items.add(
        DropdownMenuItem(
          value: sante,
          child: Text(sante.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(ComboSante selectedsanteDure) {
    setState(() {
      _selectedSanteDure = selectedsanteDure;
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
              SizedBox(
                height: size.height * .5,
                child: StepCreateObjectif(
                  size: size,
                  title: "Créer objectif pour ma sante",
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * .4,
                            decoration: BoxDecoration(
                              color: Grey.withOpacity(.1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: wikiText(
                                hint: "Montant",
                                label: "Montant",
                                inputType: TextInputType.number),
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
                                style:
                                    TextStyle(fontSize: 10.0, color: BlueText),
                                hint: SingleTitle(
                                  singleTitle: "Selection",
                                  size: 10.0,
                                ),
                                value: _selectedSanteDure,
                                items: _dropdownMenuItems,
                                onChanged: onChangeDropdownItem,
                              ),
                            ),
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
                          duree: "${_selectedSanteDure.name}",
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
            ],
          ),
        ),
      ),
    );
  }
}
