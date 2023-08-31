// ignore_for_file: deprecated_member_use, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volstory_app/utils/common_widgets.dart';

class Step4 extends StatefulWidget {
  const Step4({super.key});

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  int? groupValue = 0;
  int? tCGroupValue = 0;
  int groupsSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Create Event",
          style: GoogleFonts.nunito(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: Scrollbar(
          thickness: 10,
          radius: const Radius.circular(20),
          scrollbarOrientation: ScrollbarOrientation.right,
          isAlwaysShown: true,
          child: ListView(
            children: [
              bottomAppbar(4),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Event Visibility",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RadioListTile(
                activeColor: const Color.fromRGBO(1, 163, 159, 100),
                value: 0,
                groupValue: groupValue,
                title: Text(
                  "Public",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              RadioListTile(
                activeColor: const Color.fromRGBO(1, 163, 159, 100),
                value: 1,
                groupValue: groupValue,
                title: Text(
                  "Followers",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              RadioListTile(
                activeColor: const Color.fromRGBO(1, 163, 159, 100),
                value: 2,
                groupValue: groupValue,
                title: Text(
                  "By Invite",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onChanged: (value) {
                  if (value == 2) {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        useSafeArea: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16),
                                ),
                              ),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    color: Color.fromRGBO(229, 229, 234, 100),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textFormFieldCreateEvent(context,
                                              preffixIcon: Icon(Icons.search),
                                              hintText: "Search for people"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Select to Invite",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Select All",
                                                  style: GoogleFonts.nunito(
                                                    color: const Color.fromRGBO(
                                                        1, 163, 159, 100),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18, vertical: 6),
                                    child: Text(
                                      "Your Followers",
                                      style: GoogleFonts.nunito(
                                        color:
                                            Color.fromRGBO(142, 142, 147, 100),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 16.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: MaterialButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            color: const Color.fromRGBO(
                                                1, 163, 159, 100),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 30),
                                            child: Text(
                                              "Invite",
                                              style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 2,
                                    color: Color.fromRGBO(242, 242, 245, 100),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Center(
                                      child: Text(
                                        "Close",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunito(
                                          color: const Color.fromRGBO(
                                              253, 87, 87, 100),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              ListTile(
                title: Row(
                  children: [
                    Text(
                      "Invite user groups",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "(optional)",
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(142, 142, 147, 100),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.info_outline_rounded,
                      color: Color.fromRGBO(1, 163, 159, 100),
                    ),
                  ],
                ),
                trailing: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        useSafeArea: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16),
                                ),
                              ),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    color: Color.fromRGBO(229, 229, 234, 100),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textFormFieldCreateEvent(context,
                                              preffixIcon: Icon(Icons.search),
                                              hintText: "Search for people"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "$groupsSelected selected",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Select All",
                                                  style: GoogleFonts.nunito(
                                                    color: const Color.fromRGBO(
                                                        1, 163, 159, 100),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 16.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: MaterialButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            color: const Color.fromRGBO(
                                                1, 163, 159, 100),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15, horizontal: 30),
                                            child: Text(
                                              "Invite",
                                              style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 2,
                                    color: Color.fromRGBO(242, 242, 245, 100),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Center(
                                      child: Text(
                                        "Close",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunito(
                                          color: const Color.fromRGBO(
                                              253, 87, 87, 100),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    "Invite",
                    style: GoogleFonts.nunito(
                      color: const Color.fromRGBO(1, 163, 159, 100),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              ListTile(
                title: Row(
                  children: [
                    Text(
                      "Link photos/videos",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "(optional)",
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(142, 142, 147, 100),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.info_outline_rounded,
                      color: Color.fromRGBO(1, 163, 159, 100),
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: _textFormFieldCreateEvent(
                    context,
                    label: "Enter link (optional)",
                    preffixIcon: Icon(Icons.link),
                    textInputType: TextInputType.url,
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      "Terms & conditions",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.info_outline_rounded,
                      color: Color.fromRGBO(1, 163, 159, 100),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      activeColor: const Color.fromRGBO(1, 163, 159, 100),
                      value: 0,
                      groupValue: tCGroupValue,
                      title: Text(
                        "Default",
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          tCGroupValue = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Tap to View",
                            style: GoogleFonts.nunito(
                              color: const Color.fromRGBO(1, 163, 159, 100),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              RadioListTile(
                activeColor: const Color.fromRGBO(1, 163, 159, 100),
                value: 1,
                groupValue: tCGroupValue,
                title: Text(
                  "Custom",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onChanged: (value) {
                  if (value == 1) {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      useSafeArea: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.0),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                          ),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: ListView(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 8.0, left: 8, top: 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/tncIcon.png',
                                height: 160,
                                width: 150,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  "Custom Terms & Conditions",
                                  style: GoogleFonts.nunito(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromRGBO(1, 163, 159, 100),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Text(
                                  "Terms & conditions set forth clauses that state the rules, requirements, and limitations for an event, that a user must agree to in order to join the event.",
                                  style: GoogleFonts.nunito(
                                    fontSize: 17,
                                    color:
                                        const Color.fromRGBO(72, 72, 84, 100),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: const Divider(
                                  thickness: 2,
                                  color: Color.fromRGBO(242, 242, 245, 100),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Note:",
                                      style: GoogleFonts.nunito(
                                        decoration: TextDecoration.underline,
                                        decorationColor: const Color.fromRGBO(
                                            1, 163, 159, 100),
                                        fontSize: 18,
                                        color: const Color.fromRGBO(
                                            1, 163, 159, 100),
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.circle_rounded,
                                        size: 8,
                                        color: const Color.fromRGBO(
                                            1, 163, 159, 100),
                                      ),
                                      title: Text(
                                        "Without accepting the T&C, a person won’t be able to join the event",
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          color: const Color.fromRGBO(
                                              72, 72, 74, 100),
                                        ),
                                      ),
                                      //isThreeLine: true,
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.circle_rounded,
                                        size: 8,
                                        color: const Color.fromRGBO(
                                            1, 163, 159, 100),
                                      ),
                                      title: Text(
                                        "You can use the default terms & conditions provided by the app, or attatch custom terms & conditions as a pdf file.",
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          color: const Color.fromRGBO(
                                              72, 72, 74, 100),
                                        ),
                                      ),
                                      //isThreeLine: true,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 8.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: const Color.fromRGBO(
                                            1, 163, 159, 100),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 30),
                                        child: Text(
                                          "Got it",
                                          style: GoogleFonts.nunito(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                  setState(() {
                    tCGroupValue = value;
                  });
                },
              ),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Container(
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/step4');
                        },
                        color: const Color.fromRGBO(1, 163, 159, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 30),
                        child: Text(
                          "Continue",
                          style: GoogleFonts.nunito(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textFormFieldCreateEvent(
  BuildContext context, {
  Icon? preffixIcon,
  String label = "",
  String? hintText,
  bool readOnly = false,
  Function()? onTap,
  TextAlign textAlign = TextAlign.left,
  Color inputTextColor = Colors.black,
  TextInputType textInputType = TextInputType.text,
  FontWeight inputTextFontWeight = FontWeight.normal,
}) {
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
      fillColor: Colors.white,
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
