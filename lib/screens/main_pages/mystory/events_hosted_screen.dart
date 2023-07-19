import 'package:flutter/material.dart';

class EventsHostedScreen extends StatefulWidget {
  const EventsHostedScreen({super.key});

  @override
  State<EventsHostedScreen> createState() => _EventsHostedScreenState();
}

class _EventsHostedScreenState extends State<EventsHostedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Events Hosted"),
    );
  }
}
