// ignore_for_file: deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:volstory_app/utils/common_widgets.dart';

class Step3 extends StatefulWidget {
  const Step3({super.key});
  static int minSlotMembers = 1;
  static int maxSlotMembers = 100;
  static bool showPerks = false;

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
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
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bottomAppbar(3),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Number of Participants",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Min",
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(99, 99, 102, 100),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    _eventTimeSlotsMembersCount(Step3.minSlotMembers, (value) {
                      setState(() {
                        Step3.minSlotMembers =
                            int.parse(value.replaceAll(',', ''));
                      });
                    }, 99, null, 60),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Max",
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(99, 99, 102, 100),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    _eventTimeSlotsMembersCount(Step3.maxSlotMembers, (value) {
                      setState(() {
                        Step3.maxSlotMembers =
                            int.parse(value.replaceAll(',', ''));
                      });
                    }, Step3.maxSlotMembers, Step3.maxSlotMembers, 70),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
                color: Color.fromRGBO(242, 242, 245, 100),
              ),
              ListTile(
                title: Text(
                  "Required Skills",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Add",
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
                      "Skill Groups",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "(optional)",
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(142, 142, 147, 100),
                        fontSize: 13,
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
                  onPressed: () {},
                  child: Text(
                    "Add",
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
                      "Perks for participants",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "(optional)",
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(142, 142, 147, 100),
                        fontSize: 13,
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
                trailing: Switch(
                  inactiveThumbColor: Colors.white,
                  activeColor: const Color.fromRGBO(1, 163, 159, 100),
                  value: Step3.showPerks,
                  onChanged: (value) {
                    setState(() {
                      Step3.showPerks = value;
                    });
                  },
                ),
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
                        vertical: 8.0, horizontal: 8.0),
                    child: Container(
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/step3');
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

Widget _eventTimeSlotsMembersCount(int value, Function(String) onChanged,
    int? maxValue, int? minValue, double inputWidth) {
  return QuantityInput(
      decoration: InputDecoration(
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromRGBO(128, 209, 207, 100)),
          borderRadius: BorderRadius.circular(6),
        ),
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromRGBO(209, 209, 214, 100)),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      elevation: 0,
      inputWidth: inputWidth,
      maxValue: maxValue,
      minValue: minValue,
      buttonColor: const Color.fromRGBO(229, 229, 234, 100),
      iconColor: const Color.fromRGBO(1, 163, 159, 100),
      value: value,
      onChanged: onChanged
      //(value) {
      //   setState(() {
      //     Step2.minMembers = int.parse(value.replaceAll(',', ''));
      //   });
      // },
      );
}
