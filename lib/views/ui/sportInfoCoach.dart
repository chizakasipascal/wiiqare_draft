import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/consultation/consultattion.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class SportInfoCoach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: White,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: BlueText),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: SingleTitle(
          singleTitle: "Details sur le Caoch",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleTitle(
                          singleTitle: "Coach Julien",
                          size: 18.0,
                          color: Grey,
                          fontWeight: FontWeight.bold,
                        ),
                        SingleTitle(
                          singleTitle: "Body building",
                          color: Grey,
                        ),
                        SingleTitle(
                          singleTitle: "Maison de jeune Goma",
                          color: Grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 100,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Bleu,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: Row(
                        children: [
                          Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  color: White.withOpacity(.1),
                                  shape: BoxShape.circle),
                              child: Icon(Icons.group, color: White)),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SingleTitle(
                                singleTitle: "100 +",
                                size: 15.0,
                                color: White,
                                fontWeight: FontWeight.bold,
                              ),
                              SingleTitle(
                                singleTitle: "Par semaine",
                                size: 10.0,
                                color: White.withOpacity(.6),
                              )
                            ],
                          ),
                          SizedBox(width: 10.0),
                          Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  color: White.withOpacity(.1),
                                  shape: BoxShape.circle),
                              child: Icon(Icons.group, color: White)),
                          SizedBox(width: 10.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SingleTitle(
                                singleTitle: "5 Years",
                                size: 15.0,
                                color: White,
                                fontWeight: FontWeight.bold,
                              ),
                              SingleTitle(
                                singleTitle: "Experiance",
                                size: 10.0,
                                color: White.withOpacity(.6),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      //constraints: BoxConstraints(minHeight: size.height * .9),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: White,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SingleTitle(
                              singleTitle: "About Coach",
                              color: BlueText,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 20.0),
                            Text(
                              """
From what I see, it is not a good idea to set the preferred orientation in dispose method. The dispose method is not called if you navigate to another route and you intend to go back. 
From what I see, it is not a good idea to set the preferred orientation in dispose method. The dispose method is not called if you navigate to another route and you intend to go back. 
From what I see, it is not a good idea to set the preferred orientation in dispose method. The dispose method is not called if you navigate to another route and you intend to go back. 
From what I see, it is not a good idea to set the preferred orientation in dispose method. The dispose method is not called if you navigate to another route and you intend to go back.
From what I see, it is not a good idea to set the From what I see, it is not a good idea to set the From what I see, it is not a good idea to set the From what I see, it is not a good idea to set the  preferred orientation in dispose method. The dispose method is not called if you navigate to another route and you intend to go back.  
                                """,
                              textAlign: TextAlign.start,
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Grey),
                            ),
                            SizedBox(height: 20.0),
                            SingleTitle(
                              singleTitle: "Working timer",
                              color: BlueText,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5.0),
                            RichText(
                              text: TextSpan(
                                text: 'Lundi :Matin',
                                style: TextStyle(
                                  color: BlueText,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' 06:00 AM -',
                                    style: TextStyle(
                                        color: BlueText,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' 08:00 AM',
                                    style: TextStyle(
                                        color: BlueText,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Lundi :Soire',
                                style: TextStyle(
                                  color: BlueText,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' 06:00 PM -',
                                    style: TextStyle(
                                        color: BlueText,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' 08:00 PM',
                                    style: TextStyle(
                                        color: BlueText,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            SingleTitle(
                              singleTitle: "Tarif ",
                              color: BlueText,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 5.0),
                            RichText(
                              text: TextSpan(
                                text: 'Journalieur',
                                style: TextStyle(
                                  color: BlueText,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' 100\$',
                                    style: TextStyle(
                                        color: BlueText,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Mensuel',
                                style: TextStyle(
                                  color: BlueText,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' 100\$',
                                    style: TextStyle(
                                        color: BlueText,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.0),
                            FreeInformation(
                              size: size,
                              title: "Voice call",
                              subtitle: "Can make call with audio",
                              price: 10,
                              onTap: () {
                                //TODO: Add code for voice call
                              },
                            ),
                            FreeInformation(
                              size: size,
                              title: "Message",
                              subtitle: "Write message",
                              price: 5,
                              onTap: () {
                                //TODO: Add code for Message
                                Navigator.pushNamed(context, Routes.chat);
                              },
                              color: Colors.deepOrange,
                              priceColor: Colors.amberAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: WikiButtom(
                  descpritionButtom: "Invite des amis",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            "List de contact nos inscrit dans WiiQare",
                          ),
                          content: Text("List vide"),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
