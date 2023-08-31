// ignore_for_file: prefer_const_constructors

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

Widget textFormFieldCreateEvent(BuildContext context,
    {Icon? preffixIcon,
    String label = "",
    String? hintText,
    bool readOnly = false,
    Function()? onTap,
    TextAlign textAlign = TextAlign.left,
    Color inputTextColor = Colors.black,
    TextInputType textInputType = TextInputType.text,
    FontWeight inputTextFontWeight = FontWeight.normal}) {
  return TextFormField(
    textCapitalization: TextCapitalization.sentences,
    style: TextStyle(color: inputTextColor, fontWeight: inputTextFontWeight),
    keyboardType: textInputType,
    textAlign: textAlign,
    maxLines: null,
    minLines: 1,
    onTap: onTap,
    initialValue: "",
    readOnly: readOnly,
    cursorColor: Color.fromRGBO(47, 128, 237, 100),
    cursorWidth: 2,
    decoration: InputDecoration(
      alignLabelWithHint: textAlign == TextAlign.center ? true : false,
      hintText: hintText,
      hintStyle: GoogleFonts.nunito(
        fontSize: 15,
        color: Color.fromRGBO(99, 99, 102, 100),
      ),
      prefixIcon: preffixIcon,
      prefixIconColor: Color.fromRGBO(99, 99, 102, 100),
      label: Text(
        label,
        style: GoogleFonts.nunito(
          fontSize: 15,
          color: Color.fromRGBO(99, 99, 102, 100),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: const Color.fromRGBO(1, 163, 159, 100),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: Color.fromRGBO(209, 209, 214, 100),
        ),
      ),
    ),
    validator: (value) {
      if (textInputType == TextInputType.text && value!.isEmpty) {
        return "Enter valid input";
      }
      if (textInputType == TextInputType.url &&
          value!.isEmpty &&
          !isValidURL(value)) {
        return "Enter valid input";
      } else {
        return null;
      }
    },
  );
}

bool isValidURL(String url) {
  try {
    Uri.parse(url);
    return true;
  } catch (e) {
    return false;
  }
}
