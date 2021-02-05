import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/Doctor/doctor.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: White,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: BlueText),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   title: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       SingleTitle(
      //         singleTitle: "Muhamed",
      //         size: 12.0,
      //       ),
      //       SizedBox(height: 5),
      //       SingleTitle(
      //         singleTitle: "Find your suitable doctor here",
      //         size: 12.0,
      //         color: Grey,
      //       )
      //     ],
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 40,
      //         width: 40,
      //         color: Grey,
      //         child: Icon(Icons.person),
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: BlueText,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: size.width,
                        child: wikiText(
                          hint: "Chercher",
                          suffixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: Grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                SingleTitle(
                  singleTitle: "Specialist",
                  fontWeight: FontWeight.bold,
                  color: Grey,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DoctotPrefences(
                        widget: WikiButtom(
                          descpritionButtom: "All",
                          onPressed: () {},
                        ),
                      ),
                      DoctotPrefences(
                        widget: WikiButtom(
                          descpritionButtom: "Femme ancient",
                          colorBorder: Bleu,
                          color2: Bleu,
                          color: White,
                          onPressed: () {},
                        ),
                      ),
                      DoctotPrefences(
                        widget: WikiButtom(
                          descpritionButtom: "Dianbetique",
                          colorBorder: Bleu,
                          color2: Bleu,
                          color: White,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                DoctorCard(
                  size: size,
                  image: Placeholder(),
                  name: "Coach Julien",
                  autre: "100 - 180 kg",
                  descrption: "Body building",
                  onTap: () {
                    Navigator.pushNamed(context, Routes.inforCoach);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
