// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:volstory_app/screens/main_pages/create_event_screen.dart';
import 'package:volstory_app/screens/main_pages/home_screen.dart';
import 'package:volstory_app/screens/main_pages/mystory/mystory_screen.dart';
import 'package:volstory_app/screens/main_pages/notifications_screen.dart';
import 'package:volstory_app/screens/main_pages/profile_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> _widgetItems = [
    HomeScreen(),
    MyStoryScreen(),
    CreateEventScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetItems.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: const Color.fromRGBO(1, 163, 159, 100),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
