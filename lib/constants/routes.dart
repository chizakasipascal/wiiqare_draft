import 'package:flutter/material.dart';
import 'package:wiiqare/views/tabsHome/tabsHome.dart';
import 'package:wiiqare/views/ui/sportInfoCoach.dart';

import 'package:wiiqare/views/ui/ui.dart';
import 'package:wiiqare/views/ui/objectis/objectifs.dart';
import 'package:wiiqare/views/ui/wallet/wallet.dart';

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
  static const String consiltationListeDoctor = '/consiltationListeDoctor';
  static const String diabete = '/diabete';
  static const String famille = '/famille';
  static const String grossesse = '/grossesse';
  static const String uiMontant = '/uiMontant';
  static const String sante = '/sante';

  static const String sport = '/sport';
  static const String consiltation = '/consiltation';
  static const String pharmacie = '/pharmacie';
  static const String prevention = '/prevention';
  static const String labo = '/labo';

  static const String chat = '/chat';
  static const String pay = '/pay';
  static const String transfert = '/transfert';
  static const String recharge = '/recharge';
  static const String hopital = '/hopital';
  static const String setting = '/setting';
  static const String inforCoach = '/inforCoach';

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
    consiltationListeDoctor: (BuildContext context) =>
        ConsiltationListeDoctor(),
    sport: (BuildContext context) => Sport(),
    consiltation: (BuildContext context) => Consiltation(),
    pharmacie: (BuildContext context) => Pharmacie(),
    prevention: (BuildContext context) => Prevention(),
    labo: (BuildContext context) => Labo(),
    chat: (BuildContext context) => ChatScreen(),
    transfert: (BuildContext context) => Transfert(),
    pay: (BuildContext context) => Pay(),
    recharge: (BuildContext context) => Recharge(),
    hopital: (BuildContext context) => Hopital(),
    setting: (BuildContext context) => SettingdTabs(),
    inforCoach: (BuildContext context) => SportInfoCoach(),
  };
}
