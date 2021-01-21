import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class CodePin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LogoWiiQare(size: size),
            SingleText20pixel(
              designation: "ENTRE LE CODE PIN",
              color: BlueText,
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinEntryTextField(
                  showFieldAsBox: false,
                  isTextObscure: true,
                  onSubmit: (String pin) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Pin"),
                            content: Text('Pin entered is $pin'),
                          );
                        }); //end showDialog()
                  }, // end onSubmit
                ), // end PinEntryTextField()
              ), // end Padding()
            ),
            SizedBox(height: 40),
            SingleTitle(
              singleTitle: "Code PIN oublie?",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 10),
            SingleTitle(
              singleTitle: "Utiliser mot de passe",
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ), // end Container()
    );
  }
}
