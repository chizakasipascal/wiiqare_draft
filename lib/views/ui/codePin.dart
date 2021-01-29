import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:otp_screen/otp_screen.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class CodePin extends StatelessWidget {
  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.pushNamed(context, Routes.creeobjectif);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: White,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: BlueText),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: OtpScreen(
          title: "ENTRE LE CODE PIN",
          subTitle: "Code PIN oublie?",
          otpLength: 4,
          validateOtp: validateOtp,
          routeCallback: moveToNextScreen,
          titleColor: Colors.black,
          themeColor: Colors.black,
        )
        /*
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LogoWiiQare(size: size),
            SizedBox(height: 20),
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
            GestureDetector(
              onTap: () {
                //TODO:=> //Mettre code appropries

                //TODO:Objectif navigator
                Navigator.pushNamed(context, Routes.creeobjectif);
              },
              child: SingleTitle(
                singleTitle: "Utiliser mot de passe",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ), // end Container()
    */
        );
  }
}
