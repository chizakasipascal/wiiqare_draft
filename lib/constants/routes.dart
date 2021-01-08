import 'package:flutter/material.dart';
import 'package:wiiqare/views/ui/dashboard.dart';

class Routes {
  Routes._();

  static const String dashboard = '/dashboard';

  static final routes = <String, WidgetBuilder>{
    dashboard: (BuildContext context) => Dashboard(),
  };
}
