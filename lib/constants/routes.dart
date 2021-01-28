import 'package:flutter/material.dart';
import 'package:wiiqare/views/ui/GroupeCreer.dart';
import 'package:wiiqare/views/ui/ui.dart';
import 'package:wiiqare/views/ui/objectis/objectifs.dart';
import 'package:wiiqare/views/ui/groupeCreer.dart';

class Routes {
  Routes._();

  static const String authentification = '/authentification';
  static const String welcome = '/welcome';
  static const String help = '/help';
  static const String home = '/home';
  static const String otp = '/otp';
  static const String codePin = "/codePin";
  static const String modePayement = "/modePayement";
  static const String qRCodeScanner = '/qRCodeScanner';
  static const String creeobjectif = '/creeobjectif';
  static const String objectifTYPE = '/objectifTYPE';
  static const String goupe = '/groupe';
  static const String hopital = '/hopital';

  /// Objectif route

  static const String diabete = '/diabete';
  static const String famille = '/famille';
  static const String grossesse = '/grossesse';
  static const String uiMontant = '/uiMontant';
  static const String sante = '/sante';

  ///
  static final routes = <String, WidgetBuilder>{
    authentification: (BuildContext context) => Authentification(),
    welcome: (BuildContext context) => Welcome(),
    help: (BuildContext context) => Help(),
    home: (BuildContext context) => Home(),
    otp: (BuildContext context) => OTP(),
    codePin: (BuildContext contrxt) => CodePin(),
    modePayement: (BuildContext context) => ModePayement(),
    qRCodeScanner: (BuildContext context) => QRCodeScannerViews(),
    creeobjectif: (BuildContext context) => CreeObjectifs(),
    objectifTYPE: (BuildContext context) => ObjectifsTYPE(),
    diabete: (BuildContext context) => Diabete(),
    famille: (BuildContext context) => Famille(),
    grossesse: (BuildContext context) => Grossesse(),
    uiMontant: (BuildContext context) => UIMontant(),
    sante: (BuildContext context) => Sante(),
    goupe: (BuildContext context) => GroupeScafold(),
    hopital: (BuildContext context) => Hopital()
  };
}
