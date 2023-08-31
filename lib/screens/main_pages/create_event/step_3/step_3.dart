// ignore_for_file: deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:volstory_app/utils/common_widgets.dart';

class Step3 extends StatefulWidget {
  const Step3({super.key});
  static int minSlotMembersForEvent = 1;
  static int maxSlotMembersForEvent = 100;
  static int minSlotMembersForGroups = 1;
  static int maxSlotMembersForGroups = 100;
  static bool showPerks = false;
  static bool createSkillGroups = false;

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
                    _eventTimeSlotsMembersCount(Step3.minSlotMembersForEvent,
                        (value) {
                      setState(() {
                        Step3.minSlotMembersForEvent =
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
                    _eventTimeSlotsMembersCount(Step3.maxSlotMembersForEvent,
                        (value) {
                      setState(() {
                        Step3.maxSlotMembersForEvent =
                            int.parse(value.replaceAll(',', ''));
                      });
                    }, 100, null, 70),
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
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  _textFormFieldStep3CreateEvent(
                                    context,
                                    hintText: "Search for skills",
                                    preffixIcon:
                                        const Icon(Icons.search_outlined),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.info_outline,
                                        color: Color.fromRGBO(1, 163, 159, 100),
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "Tap on a skill to remove it",
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                              99, 99, 102, 100),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Wrap(
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    spacing: 6.0,
                                    runSpacing: 6.0,
                                    children: [
                                      // chips not working yet have to change to flutterchip for better results
                                      ChoiceChip(
                                        label: const Text(
                                          "Plantation",
                                        ),
                                        labelStyle: GoogleFonts.nunito(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        selectedColor: const Color.fromRGBO(
                                            1, 163, 159, 100),
                                        selected: true,
                                        backgroundColor: const Color.fromRGBO(
                                            255, 255, 255, 100),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide
                                              .none, //the outline color
                                          borderRadius:
                                              BorderRadius.circular(52),
                                        ),
                                      ),
                                      ChoiceChip(
                                        label: const Text(
                                          "Driving",
                                        ),
                                        labelStyle: GoogleFonts.nunito(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        selectedColor: const Color(0xff01a39f),
                                        selected: false,
                                        backgroundColor: const Color.fromRGBO(
                                            255, 255, 255, 100),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            color: Color(0xFf8e8e93),
                                          ), //the outline color
                                          borderRadius:
                                              BorderRadius.circular(52),
                                        ),
                                      ),
                                      ChoiceChip(
                                        label: const Text(
                                          "Design",
                                        ),
                                        labelStyle: GoogleFonts.nunito(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        selectedColor: const Color(0xff01a39f),
                                        selected: false,
                                        backgroundColor: const Color.fromRGBO(
                                            255, 255, 255, 100),
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            color: Color(0xFf8e8e93),
                                          ), //the outline color
                                          borderRadius:
                                              BorderRadius.circular(52),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
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
                        return StatefulBuilder(
                          builder: (context, setState) {
                            return SingleChildScrollView(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16),
                                  ),
                                ),
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.9,
                                child: Step3.createSkillGroups
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Text(
                                              "Create skill group",
                                              style: GoogleFonts.nunito(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: const Color.fromRGBO(
                                                    1, 163, 159, 100),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Text(
                                              "Title",
                                              style: GoogleFonts.nunito(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child:
                                                _textFormFieldStep3CreateEvent(
                                              context,
                                              hintText: "Name this skill group",
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Text(
                                              "Number of group members",
                                              style: GoogleFonts.nunito(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Min",
                                                  style: GoogleFonts.nunito(
                                                    color: const Color.fromRGBO(
                                                        99, 99, 102, 100),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                _eventTimeSlotsMembersCount(
                                                    Step3
                                                        .minSlotMembersForGroups,
                                                    (value) {
                                                  setState(() {
                                                    Step3.minSlotMembersForGroups =
                                                        int.parse(
                                                            value.replaceAll(
                                                                ',', ''));
                                                  });
                                                }, 99, null, 60),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Max",
                                                  style: GoogleFonts.nunito(
                                                    color: const Color.fromRGBO(
                                                        99, 99, 102, 100),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                _eventTimeSlotsMembersCount(
                                                    Step3
                                                        .maxSlotMembersForGroups,
                                                    (value) {
                                                  setState(() {
                                                    Step3.maxSlotMembersForGroups =
                                                        int.parse(
                                                            value.replaceAll(
                                                                ',', ''));
                                                  });
                                                }, 100, null, 70),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(
                                            thickness: 2,
                                            color: Color.fromRGBO(
                                                209, 209, 214, 100),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Text(
                                              "Required skills for this group",
                                              style: GoogleFonts.nunito(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child:
                                                _textFormFieldStep3CreateEvent(
                                              context,
                                              hintText: "Search for skills",
                                              preffixIcon: const Icon(
                                                  Icons.search_outlined),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.info_outline,
                                                  color: Color.fromRGBO(
                                                      1, 163, 159, 100),
                                                  size: 20,
                                                ),
                                                const SizedBox(
                                                  width: 6,
                                                ),
                                                Text(
                                                  "Tap on a skill to remove it",
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        99, 99, 102, 100),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: Wrap(
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              spacing: 6.0,
                                              runSpacing: 6.0,
                                              children: [
                                                // chips not working yet have to change to flutterchip for better results
                                                ChoiceChip(
                                                  label: const Text(
                                                    "Plantation",
                                                  ),
                                                  labelStyle:
                                                      GoogleFonts.nunito(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  selectedColor:
                                                      const Color.fromRGBO(
                                                          1, 163, 159, 100),
                                                  selected: true,
                                                  backgroundColor:
                                                      const Color.fromRGBO(
                                                          255, 255, 255, 100),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide
                                                        .none, //the outline color
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            52),
                                                  ),
                                                ),
                                                ChoiceChip(
                                                  label: const Text(
                                                    "Driving",
                                                  ),
                                                  labelStyle:
                                                      GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  selectedColor:
                                                      const Color(0xff01a39f),
                                                  selected: false,
                                                  backgroundColor:
                                                      const Color.fromRGBO(
                                                          255, 255, 255, 100),
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                      color: Color(0xFf8e8e93),
                                                    ), //the outline color
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            52),
                                                  ),
                                                ),
                                                ChoiceChip(
                                                  label: const Text(
                                                    "Design",
                                                  ),
                                                  labelStyle:
                                                      GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  selectedColor:
                                                      const Color(0xff01a39f),
                                                  selected: false,
                                                  backgroundColor:
                                                      const Color.fromRGBO(
                                                          255, 255, 255, 100),
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(
                                                      color: Color(0xFf8e8e93),
                                                    ), //the outline color
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            52),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: MaterialButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                      Step3.createSkillGroups =
                                                          false;
                                                    },
                                                    color: const Color.fromRGBO(
                                                        1, 163, 159, 100),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 15,
                                                        horizontal: 30),
                                                    child: Text(
                                                      "Done",
                                                      style: GoogleFonts.nunito(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Divider(
                                            thickness: 2,
                                            color: Color.fromRGBO(
                                                242, 242, 245, 100),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              Step3.createSkillGroups = false;
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
                                      )
                                    : Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Align(
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
                                          Image.asset(
                                              'assets/images/skillGroupsIcon.png'),
                                          const SizedBox(
                                            height: 50,
                                          ),
                                          Text(
                                            "Skill Groups",
                                            style: GoogleFonts.nunito(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromRGBO(
                                                  1, 163, 159, 100),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            "Skill groups enable you to create groups based on different types of volunteering work required within the same event.",
                                            style: GoogleFonts.nunito(
                                              fontSize: 18,
                                              color: const Color.fromRGBO(
                                                  72, 72, 84, 100),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "When participants view your event, they can choose what skill group they’d like to join, based on their interests or skills.",
                                            style: GoogleFonts.nunito(
                                              fontSize: 18,
                                              color: const Color.fromRGBO(
                                                  72, 72, 84, 100),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 8.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: MaterialButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        Step3.createSkillGroups =
                                                            true;
                                                      });
                                                    },
                                                    color: const Color.fromRGBO(
                                                        1, 163, 159, 100),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 15,
                                                        horizontal: 30),
                                                    child: Text(
                                                      "Create skill group",
                                                      style: GoogleFonts.nunito(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
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
              Step3.showPerks
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.info_outline,
                                color: Color.fromRGBO(1, 163, 159, 100),
                                size: 20,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Tap on a perk to remove it",
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(99, 99, 102, 100),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Wrap(
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          spacing: 6.0,
                          runSpacing: 6.0,
                          children: [
                            // chips not working yet have to change to flutterchip for better results
                            ChoiceChip(
                              label: const Text(
                                "Certificate",
                              ),
                              labelStyle: GoogleFonts.nunito(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              selectedColor:
                                  const Color.fromRGBO(1, 163, 159, 100),
                              selected: true,
                              backgroundColor:
                                  const Color.fromRGBO(255, 255, 255, 100),
                              shape: RoundedRectangleBorder(
                                side: BorderSide.none, //the outline color
                                borderRadius: BorderRadius.circular(52),
                              ),
                            ),
                            ChoiceChip(
                              label: const Text(
                                "Meals",
                              ),
                              labelStyle: GoogleFonts.nunito(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              selectedColor:
                                  const Color.fromRGBO(1, 163, 159, 100),
                              selected: true,
                              backgroundColor:
                                  const Color.fromRGBO(255, 255, 255, 100),
                              shape: RoundedRectangleBorder(
                                side: BorderSide.none, //the outline color
                                borderRadius: BorderRadius.circular(52),
                              ),
                            ),
                            ChoiceChip(
                              label: const Text(
                                "Stipend",
                              ),
                              labelStyle: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              selectedColor: const Color(0xff01a39f),
                              selected: false,
                              backgroundColor:
                                  const Color.fromRGBO(255, 255, 255, 100),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color(0xFf8e8e93),
                                ), //the outline color
                                borderRadius: BorderRadius.circular(52),
                              ),
                            ),
                            ChoiceChip(
                              label: const Text(
                                "Conveyance",
                              ),
                              labelStyle: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              selectedColor: const Color(0xff01a39f),
                              selected: false,
                              backgroundColor:
                                  const Color.fromRGBO(255, 255, 255, 100),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color(0xFf8e8e93),
                                ), //the outline color
                                borderRadius: BorderRadius.circular(52),
                              ),
                            ),
                            ChoiceChip(
                              avatar: const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add),
                              ),
                              label: const Text(
                                "Add Custom",
                              ),
                              labelStyle: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              selectedColor: const Color(0xff01a39f),
                              selected: false,
                              backgroundColor:
                                  const Color.fromRGBO(255, 255, 255, 100),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color(0xFf8e8e93),
                                ), //the outline color
                                borderRadius: BorderRadius.circular(52),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    )
                  : Container(),
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

Widget _textFormFieldStep3CreateEvent(
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
      } else {
        return null;
      }
    },
  );
}
