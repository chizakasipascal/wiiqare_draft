import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Container(height: size.height, color: Colors.green),
            // WikiAppBar(
            //   name: "Ebene jean",
            // ),
          ],
        ),
      ),
    );
  }
}
