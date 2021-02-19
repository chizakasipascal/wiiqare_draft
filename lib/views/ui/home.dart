import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/tabsHome/tabsHome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  PageController _controller;
  bool buttonPressed = false;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _pages = [
      HomeTabs(),
      Wallets(),
      UsesTabs(),
      RecompeseTabs(),
      SettingdTabs()
    ];
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          physics: NeverScrollableScrollPhysics(),
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(FontAwesomeIcons.home, size: 20, color: WikiBleu),
            icon: Icon(
              FontAwesomeIcons.home,
              // size: 20,
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
            activeIcon:
                Icon(FontAwesomeIcons.wallet, size: 20, color: WikiBleu),
            icon: Icon(
              FontAwesomeIcons.wallet,
              // size: 20,
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
            activeIcon: Icon(FontAwesomeIcons.users, size: 20, color: WikiBleu),
            icon: Icon(
              FontAwesomeIcons.users,
              // size: 20,
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
            activeIcon:
                Icon(FontAwesomeIcons.boxOpen, size: 20, color: WikiBleu),
            icon: Icon(
              FontAwesomeIcons.boxOpen,
              //size: 20,
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
            activeIcon: Icon(FontAwesomeIcons.cog, size: 20, color: WikiBleu),
            icon: Icon(
              FontAwesomeIcons.cog,
              //size: 20,
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
        selectedItemColor: WikiBleu,
        unselectedItemColor: BlueText,
        unselectedLabelStyle: TextStyle(
          color: BlueText,
        ),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _controller.animateToPage(_selectedIndex,
                duration: Duration(milliseconds: 20), curve: Curves.bounceIn);
          });
        },
      ),
    );
  }
}
