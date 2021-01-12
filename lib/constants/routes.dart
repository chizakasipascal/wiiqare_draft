import 'package:flutter/material.dart';
import 'package:wiiqare/views/ui/ui.dart';

class Routes {
  Routes._();

  static const String authentification = '/authentification';
  static const String welcome = '/welcome';

  static final routes = <String, WidgetBuilder>{
    authentification: (BuildContext context) => Authentification(),
    welcome: (BuildContext context) => Welcome()
  };
}
