// ignore_for_file: sort_child_properties_last, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  static final _formKey = GlobalKey<FormState>();
  static final _virtualFormKey = GlobalKey<FormState>();
  static bool isVirtualEvent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          radius: Radius.circular(20),
          scrollbarOrientation: ScrollbarOrientation.right,
          //   isAlwaysShown: true,
          child: ListView(
            children: [
              Container(
                height: 30.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Step  1/4",
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
                      color: const Color.fromRGBO(1, 163, 159, 100),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      width: 66.0,
                      height: 2.0,
                      color: const Color.fromRGBO(229, 229, 234, 100),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      width: 66.0,
                      height: 2.0,
                      color: const Color.fromRGBO(229, 229, 234, 100),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      width: 66.0,
                      height: 2.0,
                      color: const Color.fromRGBO(229, 229, 234, 100),
                    ),
                  ],
                ),
              ),
              _addCoverPhoto(),
              Container(
                child: Column(
                  children: [
                    _createEventForm(context, _formKey),
                    Divider(
                      thickness: 2,
                      color: Color.fromRGBO(242, 242, 245, 100),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            "This is a virtual event",
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              color: Color.fromRGBO(72, 72, 74, 100),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.info_outline_rounded,
                            color: Color.fromRGBO(1, 163, 159, 100),
                          ),
                        ],
                      ),
                      trailing: Switch(
                        inactiveThumbColor: Colors.white,
                        activeColor: Color.fromRGBO(1, 163, 159, 100),
                        value: isVirtualEvent,
                        onChanged: (value) {
                          setState(() {
                            isVirtualEvent = value;
                          });
                        },
                      ),
                    ),
                    isVirtualEvent
                        ? Container(
                            height: 0,
                          )
                        : Divider(
                            thickness: 2,
                            color: Color.fromRGBO(242, 242, 245, 100),
                          ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Form(
                        key: _virtualFormKey,
                        child: isVirtualEvent
                            ? _textFormFieldCreateEvent(
                                context,
                                label: "Enter link (optional)",
                                preffixIcon: Icon(Icons.link),
                                textInputType: TextInputType.url,
                              )
                            : _textFormFieldCreateEvent(
                                context,
                                label: "Enter Location",
                                preffixIcon: Icon(Icons.location_pin),
                                readOnly: true,
                                onTap: () {
                                  _locationBottomSheet(context);
                                },
                              ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Container(
                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() &&
                                _virtualFormKey.currentState!.validate()) {
                              Navigator.pushNamed(context, '/step2');
                            }
                            Navigator.pushNamed(context, '/step2');
                          },
                          color: const Color.fromRGBO(1, 163, 159, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          child: Text(
                            "Continue",
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _addCoverPhoto() {
  return InkWell(
    onTap: () {},
    child: Container(
      alignment: Alignment.center,
      height: 208,
      color: Color.fromRGBO(242, 242, 245, 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.camera_alt,
            size: 52,
            color: Color.fromRGBO(142, 142, 147, 100),
          ),
          Text(
            "Add Cover Photo",
            style: GoogleFonts.nunito(
              fontSize: 12,
              color: Color.fromRGBO(99, 99, 102, 100),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _textFormFieldCreateEvent(BuildContext context,
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

Widget _createEventForm(BuildContext context, Key formKey) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Form(
      key: formKey,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            _textFormFieldCreateEvent(context,
                label: "Title", inputTextFontWeight: FontWeight.bold),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            _textFormFieldCreateEvent(context,
                label: "Description- minimum 150 characters"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            _textFormFieldCreateEvent(
              context,
              label: "-- Select event category --",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            _textFormFieldCreateEvent(context,
                label: "Add hashtags",
                inputTextColor: Color.fromRGBO(1, 163, 159, 100)),
          ],
        ),
      ),
    ),
  );
}

Future _locationBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: _textFormFieldCreateEvent(
                  context,
                  hintText: "Search for area, street name",
                  preffixIcon: Icon(Icons.search_outlined),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Use Current Location",
                    style: GoogleFonts.nunito(
                      fontSize: 15,
                      color: Color.fromRGBO(99, 99, 102, 100),
                    ),
                  ),
                ),
                icon: Icon(
                  Icons.gps_fixed_outlined,
                  color: Color.fromRGBO(99, 99, 102, 100),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        thickness: 2,
                        color: Color.fromRGBO(242, 242, 245, 100),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Close",
                          style: GoogleFonts.nunito(
                            color: Color.fromRGBO(253, 87, 87, 100),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      });
}

bool isValidURL(String url) {
  try {
    Uri.parse(url);
    return true;
  } catch (e) {
    return false;
  }
}
