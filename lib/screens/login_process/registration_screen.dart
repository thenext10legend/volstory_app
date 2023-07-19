// ignore_for_file: sized_box_for_whitespace

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to Volstory",
              style: GoogleFonts.nunito(
                fontSize: 26,
                color: const Color.fromRGBO(1, 163, 159, 100),
                fontWeight: FontWeight.w800,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            Text(
              "Let’s get you registered",
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: const Color.fromRGBO(72, 72, 74, 100),
                fontWeight: FontWeight.w600,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 47,
            ),
            addPhoto(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 43, 16, 70),
              child: registrationForm(),
            )
          ],
        ),
      ),
    );
  }

  Widget addPhoto() {
    return DottedBorder(
      radius: const Radius.circular(64),
      borderType: BorderType.Circle,
      color: const Color(0xff8e8e93),
      child: Center(
        child: Container(
          height: 128,
          width: 128,
          decoration: BoxDecoration(
              color: const Color(0xfff2f2f5),
              borderRadius: BorderRadius.circular(64)),
          child: const CircleAvatar(
            //backgroundImage: AssetImage('assets/no_user.jpg'),
            backgroundColor: Color.fromRGBO(242, 242, 245, 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Color.fromRGBO(142, 142, 147, 100),
                  size: 44,
                ),
                Text(
                  "Add Photo",
                  style: TextStyle(
                    color: Color.fromRGBO(99, 99, 102, 100),
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget registrationForm() {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: buildTextFormField('First Name')),
              const SizedBox(width: 14),
              Expanded(child: buildTextFormField('Last Name')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              children: [
                Expanded(child: buildTextFormField('Age')),
                const SizedBox(width: 14),
                Expanded(child: buildTextFormField('Gender')),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: buildTextFormField('City')),
          Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: buildTextFormField('Phone Number')),
          Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: buildTextFormField('Email')),
          Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: buildTextFormField('Website')),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/interests');
              },
              color: const Color.fromRGBO(1, 163, 159, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Text(
                "Continue",
                style: GoogleFonts.nunito(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextFormField(String labelText) {
    return TextFormField(
      style: GoogleFonts.nunito(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: const Color.fromARGB(255, 28, 28, 30),
      ),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(229, 229, 234, 100),
          ),
        ),
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(229, 229, 234, 100),
            ),
            borderRadius: BorderRadius.circular(6)),
        labelText: labelText,
        labelStyle: GoogleFonts.nunito(
          color: const Color.fromRGBO(142, 142, 147, 100),
          fontWeight: FontWeight.w400,
          fontSize: 15,
          height: 1.4,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: const EdgeInsets.fromLTRB(12, 14, 0, 12),
      ),
    );
  }
}
