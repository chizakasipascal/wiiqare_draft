import 'package:flutter/material.dart';
// import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:otp_screen/otp_screen.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';

class OTP extends StatelessWidget {
  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.pushNamed(context, Routes.codePin);
  }

  @override
  Widget build(BuildContext context) {
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
          title: "Entrez l'OTP\nde verification",
          subTitle: "Code envoye au 09900098**",
          otpLength: 4,
          validateOtp: validateOtp,
          routeCallback: moveToNextScreen,
          titleColor: Colors.black,
          themeColor: Colors.black,
        )
        /* Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleText20pixel(
                designation: "Entrez l'OTP\nde verification",
                color: Grey,
              ),
              SingleTitle(singleTitle: "Code envoye au ***08"),
              Row(
                children: [
                  SingleTitle(singleTitle: "Ce code expire dans "),
                  SingleTitle(
                    singleTitle: "02:30",
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Container(
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: PinEntryTextField(
              //       showFieldAsBox: false,
              //       onSubmit: (String pin) {
              //         showDialog(
              //             context: context,
              //             builder: (context) {
              //               return AlertDialog(
              //                 title: Text("Pin"),
              //                 content: Text('Pin entered is $pin'),
              //               );
              //             }); //end showDialog()
              //       }, // end onSubmit
              //     ), // end PinEntryTextField()
              //   ), // end Padding()
              // ),
              OtpScreen(
                otpLength: 4,
                validateOtp: validateOtp,
                routeCallback: moveToNextScreen,
                titleColor: Colors.black,
                themeColor: Colors.black,
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  //TODO:Code d'envoye OTP
                },
                child: Center(
                  child: SingleTitle(
                    singleTitle: "Renvoye l'OTP",
                    fontWeight: FontWeight.bold,
                    color: BlueText,
                  ),
                ),
              )
            ],
          ),
        ),
      ), */ // end Container()

        );
  }
}
