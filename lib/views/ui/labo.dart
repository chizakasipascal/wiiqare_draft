import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/wikiOffres.dart';

class Labo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      //  controller: scrollController,
      itemCount: 60,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, i) => new Container(
        // height: 300.0,
        //  margin: const EdgeInsets.only(top: 9),
        // color: Colors.greenAccent,

        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: WikiOffres(
            size: MediaQuery.of(context).size,
            bonus: 1000,
            onPressed: () {
              //TODO: Code propres aceete fonction
            },
          ),
        ),
      ),
    );
  }
}
