import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/constants/strings.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Sincrire extends StatefulWidget {
  @override
  _SincrireState createState() => _SincrireState();
}

class _SincrireState extends State<Sincrire> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'CD';
  PhoneNumber number = PhoneNumber(isoCode: 'CD');

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'CD');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            GrandTitle(title: "Créer un compte"),
            SizedBox(height: 20.0),
            //Nom complet
            Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: WikiBleu,
                ),
                boxShadow: [
                  BoxShadow(
                      color: HintText, offset: Offset(0, 4), blurRadius: 2),
                ],
              ),
              child: wikiText(
                hint: 'chiza kasi pascal',
                label: 'Nom complet',
              ),
            ),
            SizedBox(height: 20.0),

            Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: WikiBleu,
                ),
                boxShadow: [
                  BoxShadow(
                      color: HintText, offset: Offset(0, 4), blurRadius: 2),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  errorMessage: Strings.ErrorMessageNumberInvalide,
                  hintText: Strings.HintTextDescriptionPhoneNumber,
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  textStyle: TextStyle(color: Grey),
                  selectorTextStyle: TextStyle(color: Grey),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: false,
                  cursorColor: BlueText,
                  keyboardType: TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  inputBorder: OutlineInputBorder(),
                  inputDecoration: InputDecoration(border: InputBorder.none),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
            ),

            SizedBox(height: 20.0),
            //Mot de passe
            Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: WikiBleu,
                ),
                boxShadow: [
                  BoxShadow(
                      color: HintText, offset: Offset(0, 4), blurRadius: 2),
                ],
              ),
              child: wikiText(
                hint: 'Mot de passe',
                label: 'Mot de passe',
                isPassword: true,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [],
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 60,
              child: WikiButtom(
                color: WikiBleu,
                descpritionButtom: "S'inscrire",
                onPressed: () => {
                  // formKey.currentState.validate() //Function to validate number
                  //  formKey.currentState.save() //function to save number
                  // getPhoneNumber(number.phoneNumber) //function to getnumber

                  Navigator.pushNamed(context, Routes.otp)
                },
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: SingleTitle(
                singleTitle: "Vous avez un compter WiiQare?",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
