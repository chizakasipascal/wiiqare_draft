import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Offres extends StatefulWidget {
  @override
  _OffresState createState() => _OffresState();
}

class _OffresState extends State<Offres> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(child: Text("Offres"));
  }
}
