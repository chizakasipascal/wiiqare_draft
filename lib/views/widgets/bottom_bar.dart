import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wiiqare/utils/colors.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool buttonPressed = false;
  int _selectedIndex = 0;

  void _onItemClike(int index) {
    setState(
      () {
        _selectedIndex = index;
        switch (index) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
          default:
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: Icon(FontAwesomeIcons.home, size: 20, color: Yello),
          icon: Icon(
            FontAwesomeIcons.home,
            size: 20,
            color: BlueText,
          ),
          title: const Text(
            "Home",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(FontAwesomeIcons.wallet, size: 20, color: Yello),
          icon: Icon(
            FontAwesomeIcons.wallet,
            size: 20,
            color: BlueText,
          ),
          title: const Text(
            "Wallet",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(FontAwesomeIcons.users, size: 20, color: Yello),
          icon: Icon(
            FontAwesomeIcons.users,
            size: 20,
            color: BlueText,
          ),
          title: const Text(
            "Groupe",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(FontAwesomeIcons.boxOpen, size: 20, color: Yello),
          icon: Icon(
            FontAwesomeIcons.boxOpen,
            size: 20,
            color: BlueText,
          ),
          title: const Text(
            "Recompense",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(FontAwesomeIcons.cog, size: 20, color: Yello),
          icon: Icon(
            FontAwesomeIcons.cog,
            size: 20,
            color: BlueText,
          ),
          title: const Text(
            "Parametre",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Yello,
      unselectedItemColor: BlueText,
      unselectedLabelStyle: TextStyle(
        color: BlueText,
      ),
      onTap: _onItemClike,
    );
  }
}
