import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              "Enter OTP",
              style: GoogleFonts.nunito(
                fontSize: 26,
                color: const Color.fromRGBO(1, 163, 159, 100),
                fontWeight: FontWeight.w700,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 9),
            Text(
              "Sent to +91 70289 422305",
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: const Color.fromRGBO(72, 72, 74, 100),
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 130),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Pinput(
                length: 6,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/registration');
                },
                color: const Color.fromRGBO(1, 163, 159, 100),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  "Continue",
                  style: GoogleFonts.nunito(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Didn’t receive OTP? 24s",
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: const Color.fromRGBO(142, 142, 147, 100),
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Resend OTP",
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(1, 163, 159, 100),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
