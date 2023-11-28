
import 'package:flutter/material.dart';
import 'package:sample_task3/screens/HomeScreen.dart';
import 'package:sample_task3/screens/ProfileScreen.dart';
import 'package:sample_task3/screens/SettingsScreen.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  int get currentIndex => _currentIndex;

  Widget get currentScreen => _screens[_currentIndex];

  void changeScreen(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}