// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _splashPage()
        .then((value) => Navigator.pushReplacementNamed(context, '/step3'));
  }

  Future<void> _splashPage() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 163, 159, 100),
      body: Center(
        child: Container(
          width: 160,
          height: 160,
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage("assets/images/volstory-app-icon-512px.png"),
          ),
        ),
      ),
    );
  }
}
