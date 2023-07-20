import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:volstory_app/screens/login_process/verification_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _formKey = GlobalKey<FormState>();
  var _otp;
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
        child: Form(
          key: _formKey,
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
                //Still Static
                "Sent to ${VerficationScreen.phoneNumber})",
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: const Color.fromRGBO(72, 72, 74, 100),
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 130),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Pinput(
                  length: 6,
                  onChanged: (value) => _otp = value,
                  validator: (pin) {
                    if (pin == null || pin.length != 6) {
                      return 'Invalid otp length';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MaterialButton(
                  onPressed: () async {
                    try {
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: VerficationScreen.verificationId,
                              smsCode: _otp);
                      await FirebaseAuth.instance
                          .signInWithCredential(credential);
                      Navigator.pushReplacementNamed(context, '/registration');
                    } catch (e) {
                      print("Wrong OTP");
                    }
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
      ),
    );
  }
}
