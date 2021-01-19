import 'package:flutter/material.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:wiiqare/views/tabsHome/tabsHome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wiiqare/views/widgets/bottom_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;
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
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 5);

    _controller.addListener(_handleTabSelection);

    super.initState();
  }

  _handleTabSelection() {
    if (_controller.indexIsChanging) {
      setState(() {
        _selectedIndex = _controller.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: TabBarView(
            controller: _controller,
            physics: new NeverScrollableScrollPhysics(),
            children: [
              HomeTabs(),
              HomeTabs(),
              HomeTabs(),
              HomeTabs(),
              HomeTabs()
            ],
          ),
        ),
      ),
    );
  }

  _getIndex() {
    print("Index is ${_controller.index}");
  }
}
