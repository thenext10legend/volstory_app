import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bottomAppbar(int step) {
  return Container(
    height: 30.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Step  $step/4",
          style: GoogleFonts.nunito(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(1, 163, 159, 100),
          ),
        ),
        const SizedBox(width: 10.0),
        Container(
          width: 66.0,
          height: 2.0,
          color: step >= 1
              ? const Color.fromRGBO(1, 163, 159, 100)
              : const Color.fromRGBO(229, 229, 234, 100),
        ),
        const SizedBox(width: 10.0),
        Container(
          width: 66.0,
          height: 2.0,
          color: step >= 2
              ? const Color.fromRGBO(1, 163, 159, 100)
              : const Color.fromRGBO(229, 229, 234, 100),
        ),
        const SizedBox(width: 10.0),
        Container(
          width: 66.0,
          height: 2.0,
          color: step >= 3
              ? const Color.fromRGBO(1, 163, 159, 100)
              : const Color.fromRGBO(229, 229, 234, 100),
        ),
        const SizedBox(width: 10.0),
        Container(
          width: 66.0,
          height: 2.0,
          color: step >= 4
              ? const Color.fromRGBO(1, 163, 159, 100)
              : const Color.fromRGBO(229, 229, 234, 100),
        ),
      ],
    ),
  );
}
