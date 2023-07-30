// ignore_for_file: unused_field, prefer_final_fields, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    Container(),
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
            if (index == 2) {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  context: context,
                  builder: (_) => Container(
                        height: MediaQuery.of(context).size.width / 2,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.add_box_outlined,
                                color: Color.fromRGBO(1, 163, 159, 100),
                                size: 25,
                              ),
                              title: Text(
                                "Create Event",
                                style: GoogleFonts.nunito(fontSize: 18),
                              ),
                              onTap: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).pushNamed('/step1');
                              },
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.group_outlined,
                                color: Color.fromRGBO(1, 163, 159, 100),
                                size: 25,
                              ),
                              title: Text(
                                "Manage Groups",
                                style: GoogleFonts.nunito(fontSize: 18),
                              ),
                              trailing: Container(
                                color: Color.fromRGBO(47, 128, 237, 100),
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "NEW",
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ));
            } else {
              _selectedIndex = index;
            }
          });
        },
        selectedItemColor: const Color.fromRGBO(1, 163, 159, 100),
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Color.fromRGBO(142, 142, 147, 100),
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.nunito(),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: "My Story",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Create",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
