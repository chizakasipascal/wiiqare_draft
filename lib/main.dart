import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/routes.dart';
import 'constants/app_theme.dart';
import 'constants/strings.dart';
import 'views/ui/ui.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: themeData,
      home: Dashboard(),
      routes: Routes.routes,
    );
  }
}
