import 'package:flutter/material.dart';
import 'package:wiiqare/views/ui/ui.dart';

class Routes {
  Routes._();

  static const String authentification = '/authentification';
  static const String welcome = '/welcome';
  static const String help = '/help';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    authentification: (BuildContext context) => Authentification(),
    welcome: (BuildContext context) => Welcome(),
    help: (BuildContext context) => Help(),
    home: (BuildContext context) => Home()
  };
}
