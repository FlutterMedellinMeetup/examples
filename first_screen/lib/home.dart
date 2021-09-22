import 'package:first_screen/data.dart';
import 'package:first_screen/myAppBar.dart';
import 'package:first_screen/myCard.dart';
import 'package:first_screen/myCards.dart';
import 'package:first_screen/profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static const routename = '/';
  MyHomePage({Key? key,}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  static List<Widget> subScreens = [
    MyCards(),
    Profile()
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(title: 'Movie App'),
      body: Center(
        child: subScreens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedIconTheme: IconThemeData(color: Colors.cyan, size: 40),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 40),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'movies',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            backgroundColor: Colors.deepPurple
          ),
        ],
      ),
    );
  }
}
