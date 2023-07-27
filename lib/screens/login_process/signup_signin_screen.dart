// ignore_for_file: sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volstory_app/services/auth_Service.dart';

class SignUpSignInScreen extends StatefulWidget {
  const SignUpSignInScreen({super.key});

  @override
  State<SignUpSignInScreen> createState() => _SignUpSignInScreenState();
}

class _SignUpSignInScreenState extends State<SignUpSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 160,
              width: 160,
              child: Image.asset(
                'assets/images/VolstoryIcon.png',
              ),
            ),
            const SizedBox(height: 18),
            Center(
              child: Text(
                "VolStory",
                style: GoogleFonts.nunito(
                  fontSize: 28,
                  color: const Color.fromRGBO(1, 163, 159, 100),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/verification');
              },
              color: const Color.fromRGBO(1, 163, 159, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Text(
                "Sign-up with Phone Number",
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            OutlinedButton(
              onPressed: () async {
                await AuthService().signInWithGoogle();
                Navigator.of(context).pushReplacementNamed("/registration");
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: const BorderSide(
                  color: Color.fromRGBO(1, 163, 159, 100),
                ),
              ),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    height: 32,
                    width: 32,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Sign-up with Google",
                    style: GoogleFonts.nunito(
                      color: const Color.fromRGBO(1, 163, 159, 100),
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an acccount?",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: const Color.fromRGBO(142, 142, 147, 100),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      color: const Color.fromRGBO(1, 163, 159, 100),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
