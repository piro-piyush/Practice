import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:practice/pages/home/home_screen_content.dart';
import 'package:practice/pages/images/images_screen.dart';
import 'package:practice/pages/notifications/notifications_screen.dart';
import 'package:practice/pages/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // List of screens that will be shown based on the navigation bar
  List<Widget> screens = [
    const HomeScreenContent(), // This screen will have its own background
    const ImagesScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text("Curved Navigation Bar Example"),
        backgroundColor: Colors.transparent, // Make the app bar transparent
        elevation: 0, // Remove app bar shadow
      ),
      backgroundColor: Colors.transparent,
      // Transparent background for scaffold
      body: screens[_currentIndex],
      // Display the selected screen
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.dashboard, size: 30),
          Icon(Icons.photo_library_sharp, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.white,
        // Color of the curved navigation bar
        backgroundColor: Colors.transparent,
        // Transparent background for the nav bar
        animationCurve: Curves.easeInOutCubic,
        animationDuration: const Duration(milliseconds: 700),
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the current screen index
          });
        },
      ),
    );
  }
}
