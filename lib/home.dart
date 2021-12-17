import 'package:flutter/material.dart';
import 'package:top_level_navigation_1/screens/screenone.dart';
import 'package:top_level_navigation_1/screens/screenthree.dart';
import 'package:top_level_navigation_1/screens/screentwo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _topLevelScreens = <Widget>[
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff7f6fb),
        body: _topLevelScreens.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'One'),
            BottomNavigationBarItem(
                icon: Icon(Icons.article), label: 'Two'),
            BottomNavigationBarItem(
                icon: Icon(Icons.article), label: 'Three'),
          ],
          currentIndex: _selectedIndex,
          iconSize: 28,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: const Color(0xffD2691E),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ));
  }
}
