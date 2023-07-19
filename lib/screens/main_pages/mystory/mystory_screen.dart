import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volstory_app/screens/main_pages/mystory/events_hosted_screen.dart';
import 'package:volstory_app/screens/main_pages/mystory/events_volunteered_screen.dart';

class MyStoryScreen extends StatefulWidget {
  const MyStoryScreen({super.key});

  @override
  State<MyStoryScreen> createState() => _MyStoryScreenState();
}

class _MyStoryScreenState extends State<MyStoryScreen> {
  final List<Widget> _screens = [
    const EventsHostedScreen(),
    const EventsVolunteeredScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screens.length,
      initialIndex: _selectedIndex,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(1, 163, 159, 100),
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            indicatorPadding: const EdgeInsets.only(bottom: 5),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Events Hosted",
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Events Volunteered",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
