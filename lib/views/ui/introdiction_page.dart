import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Introdiction_page extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<Introdiction_page> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushReplacementNamed(context, Routes.welcome);
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset(
        assetName,
        width: 100,
      ),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SingleTitle(
                singleTitle:
                    "L'argent pour votre sante est en permenence dans votre poche!.",
                textAlign: TextAlign.center,
                size: 15.0,
              ),
            ],
          ),
          image: _buildImage(Pictures.Consltation),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SingleTitle(
                singleTitle:
                    "Gagner les points chaque fois que vous prenez soin de vous!",
                textAlign: TextAlign.center,
              ),
              SingleTitle(
                singleTitle: "C'est tres facile!",
                textAlign: TextAlign.center,
              )
            ],
          ),
          image: _buildImage(Pictures.Consltation),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SingleText20pixel(
                designation: "WiiQare",
              ),
              SingleTitle(
                singleTitle: "Payez vos soin de sante avec votre telephone",
                textAlign: TextAlign.center,
              ),
              SingleTitle(
                singleTitle: "C'est tres facile!",
                textAlign: TextAlign.center,
              )
            ],
          ),
          image: _buildImage(Pictures.Consltation),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const SingleTitle(
        singleTitle: 'Passer',
        color: BlueText,
      ),
      next: const SingleTitle(
        singleTitle: 'Suivant',
        color: BlueText,
      ),
      done: const SingleTitle(
        singleTitle: 'Terminer',
        color: BlueText,
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(5.0, 5.0),
        color: BlueText,
        activeSize: Size(10.0, 10.0),
        activeColor: Yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(
            25.0,
          )),
        ),
      ),
    );
  }
}
