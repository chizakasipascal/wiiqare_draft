import 'package:flutter/material.dart';
import 'package:wiiqare/constants/pictures.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Background/background.dart';
import 'package:wiiqare/views/widgets/Groupe/Steps/steps.dart';
import 'package:wiiqare/views/widgets/widgets.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class GroupeStepView extends StatefulWidget {
  @override
  _GroupeStepViewState createState() => _GroupeStepViewState();
}

class _GroupeStepViewState extends State<GroupeStepView> {
  double percent;
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    setState(() {
      percent = 35;
    });
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackGroundHome(
              size: size,
              widget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RoundedProgressBar(
                      height: 20,
                      childCenter: SingleTitle(
                        singleTitle:
                            "${percent}", //TODO:Le pourcentage de la bar de progresse
                      ),
                      style: RoundedProgressBarStyle(
                          borderWidth: 0, widthShadow: 0),
                      margin: EdgeInsets.symmetric(vertical: 16),
                      borderRadius: BorderRadius.circular(24),
                      percent: percent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        WikiObjectifItemBar(
                          descriptin: "Mon compte",
                          valeur: 1500,
                          type: "FC",
                        ),
                        WikiObjectifItemBar(
                          descriptin: "Mes points",
                          valeur: 150,
                          type: "Points",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              // maxChildSize: 0.9,
              initialChildSize: 0.9,
              minChildSize: 0.8,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: White,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Stepper(
                    type: StepperType.horizontal,
                    currentStep: _currentStep,
                    onStepTapped: (int step) =>
                        setState(() => _currentStep = step),
                    onStepContinue: _currentStep < 2
                        ? () => setState(() => _currentStep += 1)
                        : null,
                    onStepCancel: _currentStep > 0
                        ? () => setState(() => _currentStep -= 1)
                        : null,
                    steps: <Step>[
                      new Step(
                        title: new Text('Step 1'),
                        content: GroupStep(
                          size: size,
                          widget: GroupeStep2(),
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 0
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      new Step(
                        title: new Text('Step 2'),
                        content: GroupStep(
                          size: size,
                          widget: GroupeStep2(),
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      new Step(
                        title: new Text('Step 3'),
                        content: GroupStep(
                          size: size,
                          widget: GroupeStep2(),
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
