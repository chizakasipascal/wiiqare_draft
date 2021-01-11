import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wiiqare/utils/colors.dart';
import 'constants/app_theme.dart';
import 'constants/strings.dart';
import 'views/ui/ui.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: BlueText));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: themeData,
      home: Login(),
      //routes: Routes.routes,
    );
  }
}
