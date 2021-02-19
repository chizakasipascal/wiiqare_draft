import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import '../../../models/diabte.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:wiiqare/views/widgets/objectifWidgets/montantSetp.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Grossesse extends StatefulWidget {
  @override
  _GrossesseState createState() => _GrossesseState();
}

class _GrossesseState extends State<Grossesse> {
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
  int valeur = 0;

  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final ThemeData theme = Theme.of(context);
    assert(theme.platform != null);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return buildMaterialDatePicker(context);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return buildCupertinoDatePicker(context);
    }
  }

  /// This builds material date picker in Android
  buildMaterialDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light(),
          child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  /// This builds cupertion date picker in iOS
  buildCupertinoDatePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (picked) {
                if (picked != null && picked != selectedDate)
                  setState(() {
                    selectedDate = picked;
                  });
              },
              initialDateTime: selectedDate,
              minimumYear: 1900,
              maximumYear: 2030,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    setState(() {
      percent = 35;
    });
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                          Expanded(
                            child: Container(
                              height: size.height * .08,
                              decoration: BoxDecoration(
                                color: Yellow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: WikiObjectifItemBar(
                                descriptin: "Mon compte",
                                valeur: 1500,
                                type: "FC",
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: size.height * .08,
                              decoration: BoxDecoration(
                                border: Border.all(color: Yellow),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: WikiObjectifItemBar(
                                descriptin: "Mes points",
                                valeur: 150,
                                type: "Points",
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .9,
                child: StepCreateObjectif(
                  size: size,
                  title: "Créer objectif pour ma grossesse",
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleTitle(
                        singleTitle:
                            "Renseignez vous après de votre clinique pour ajuste votre objectif",
                        color: Colors.red,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
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
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SingleTitle(
                                singleTitle:
                                    "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                              ),
                              IconButton(
                                onPressed: () {
                                  _selectDate(context);
                                },
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: BlueText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleTitle(
                        singleTitle:
                            "Quand est prévue la naissance de votre enfant?",
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
                            underline: Container(),
                            style: TextStyle(fontSize: 10.0, color: BlueText),
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
                                    hint: "2500 FC/FC",
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
                                    underline: Container(),
                                    style: TextStyle(
                                        fontSize: 10.0, color: BlueText),
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
                          value: valeur,
                          onTap: (valeur) {
                            setState(() {
                              //TODO : Update value to bol
                              valeur = 1;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(
                        height: 50,
                        child: WikiButtom(
                          descpritionButtom: "Suivant",
                          onPressed: () {
                            print("Objectif creer avec success");
                            Navigator.pushReplacementNamed(
                              context,
                              Routes.home,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20.0),
                      SizedBox(
                        height: 50,
                        child: WikiButtom(
                          descpritionButtom: "Retour",
                          color: White,
                          color2: WikiBleu,
                          colorBorder: WikiBleu,
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
