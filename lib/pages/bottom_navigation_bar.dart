import 'package:flutter/material.dart';
import 'package:test/pages/home_page.dart';
import 'package:test/pages/post.dart';
import 'package:test/pages/profile_page.dart';
import 'package:test/pages/settings_page.dart';

class BottomNavigationBarExample extends StatefulWidget {
  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  var _currentIndex = 0;

  final List<Widget> screens = [
    HomePage(),
    PostPage(),
    SettingsPage(),
    ProfilePage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget current_screen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedFontSize: 15.0,
        unselectedFontSize: 12,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.grey[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add),
              label: 'Post',
              backgroundColor: Colors.grey[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.grey[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.grey[800]),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
