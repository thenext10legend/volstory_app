import 'package:flutter/material.dart';
import 'package:volstory_app/screens/otp_screen.dart';
import 'package:volstory_app/screens/registration_screen.dart';
import 'package:volstory_app/screens/signUp_signIn_screen.dart';
import 'package:volstory_app/screens/skills_screen.dart';
import 'package:volstory_app/screens/splash_screen.dart';
import 'package:volstory_app/screens/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/verification': (context) => const VerficationScreen(),
        '/otp': (context) => const OTPScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/signUpsignIn': (context) => const SignUpSignInScreen(),
        '/interests': (context) => const SkillsScreen(),
      },
    );
  }
}
