import 'package:flutter/material.dart';
import 'package:wiiqare/constants/routes.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class Historique extends StatefulWidget {
  @override
  _HistoriqueState createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 60,
        itemBuilder: (BuildContext context, int index) => Container(
          height: 60.0,
          width: size.width,
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          margin: const EdgeInsets.only(bottom: 2.5, top: 2.5),
          decoration: BoxDecoration(
            color: BlueText.withOpacity(.5),
            borderRadius: BorderRadius.circular(5.0),
          ),
          // selectedTileColor: BlueText,
          // leading: SizedBox(height: 50, width: 50, child: widget),
          child: ListTile(
            leading: Icon(Icons.transform),
            title: SingleTitle(
              singleTitle: "Transfert",
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleTitle(
                  singleTitle: "2020-20-02",
                  size: 10.0,
                  color: BlackText,
                  fontWeight: FontWeight.w500,
                ),
                SingleTitle(
                  singleTitle: "Rercharger",
                  color: Yello,
                  size: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
