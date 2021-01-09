import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 200,
                height: 100,
                color: Bleu,
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
