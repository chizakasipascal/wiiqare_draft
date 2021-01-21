import 'package:flutter/material.dart';
import 'package:wiiqare/views/ui/ui.dart';

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

  static final routes = <String, WidgetBuilder>{
    authentification: (BuildContext context) => Authentification(),
    welcome: (BuildContext context) => Welcome(),
    help: (BuildContext context) => Help(),
    home: (BuildContext context) => Home(),
    otp: (BuildContext context) => OTP(),
    codePin: (BuildContext contrxt) => CodePin(),
    modePayement: (BuildContext context) => ModePayement(),
    qRCodeScanner: (BuildContext context) => QRCodeScannerViews()
  };
}
