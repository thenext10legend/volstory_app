import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class VerficationScreen extends StatefulWidget {
  const VerficationScreen({super.key});

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  // var _phoneNumber;
  // var _isValidPhoneNumber = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verification"),
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
              "Phone Number Verification",
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
              "An OTP will be sent to this phone number",
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: const Color.fromRGBO(72, 72, 74, 100),
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 130),
            IntlPhoneField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                label: const Text(
                  "Enter Phone Number",
                ),
                labelStyle: GoogleFonts.nunito(
                  color: const Color.fromRGBO(99, 99, 102, 100),
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isValidNumber() == false) {
                  return 'Please enter valid phone number';
                }

                return null;
              },
              // onChanged: (value) {
              //   _phoneNumber = value.completeNumber;
              // },
            ),
            const SizedBox(
              height: 36,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otp');
              },
              color: const Color.fromRGBO(1, 163, 159, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Text(
                "Send OTP",
                style: GoogleFonts.nunito(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
