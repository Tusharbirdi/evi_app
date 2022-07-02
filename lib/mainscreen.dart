import 'package:evi_app/screens/about.dart';
import 'package:evi_app/screens/homepage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final screens = [
    const HomePage(),
    const About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        backgroundColor: const Color.fromRGBO(31, 31, 31, 10.0),
        selectedItemColor: Colors.white,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person_sharp),
            label: 'About',
            icon: Icon(
              Icons.person_outline_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
