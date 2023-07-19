import 'package:flutter/material.dart';

class EventsVolunteeredScreen extends StatefulWidget {
  const EventsVolunteeredScreen({super.key});

  @override
  State<EventsVolunteeredScreen> createState() =>
      _EventsVolunteeredScreenState();
}

class _EventsVolunteeredScreenState extends State<EventsVolunteeredScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Events Volunteered"),
    );
  }
}
