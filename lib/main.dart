import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:volstory_app/screens/login_process/otp_screen.dart';
import 'package:volstory_app/screens/login_process/registration_screen.dart';
import 'package:volstory_app/screens/login_process/signup_signin_screen.dart';
import 'package:volstory_app/screens/login_process/skills_screen.dart';
import 'package:volstory_app/screens/login_process/splash_screen.dart';
import 'package:volstory_app/screens/login_process/verification_screen.dart';
import 'package:volstory_app/screens/main_pages/create_event/step_1/step_1.dart';
import 'package:volstory_app/screens/main_pages/create_event/step_2/step_2.dart';

import 'package:volstory_app/tabs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
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
      initialRoute: '/step2',
      routes: {
        '/': (context) => const SplashScreen(),
        '/verification': (context) => const VerficationScreen(),
        '/otp': (context) => const OTPScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/signUpsignIn': (context) => const SignUpSignInScreen(),
        '/interests': (context) => const SkillsScreen(),
        '/tabs': (context) => const TabsScreen(),
        '/step1': (context) => const Step1(),
        '/step2': (context) => const Step2(),
      },
    );
  }
}
