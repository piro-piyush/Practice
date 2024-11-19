import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.cyan,
  ];

  List<Widget> screens = [
    const Center(child: Text("Home Screen")),
    const Center(child: Text("Images Screen")),
    const Center(child: Text("Notifications Screen")),
    const Center(child: Text("Profile Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curved Navigation Bar Example"),
      ),
      body: Container(
        color: colors[_currentIndex],
        child: screens[_currentIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.dashboard, size: 30),
          Icon(Icons.photo_library_sharp, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.white,
        backgroundColor: colors[_currentIndex],
        animationCurve: Curves.easeInOutCubic,
        animationDuration: const Duration(milliseconds: 700),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
