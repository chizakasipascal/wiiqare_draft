import 'package:flutter/material.dart';

class Gagne extends StatefulWidget {
  @override
  _GagneState createState() => _GagneState();
}

class _GagneState extends State<Gagne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(child: Text("Bonus"));
  }
}
