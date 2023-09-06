// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  final TextEditingController searchQueryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Almost there!",
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: const Color.fromRGBO(72, 72, 74, 100),
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "Add your skillsets",
                style: GoogleFonts.nunito(
                  fontSize: 26,
                  color: const Color.fromRGBO(1, 163, 159, 100),
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 43,
            ),
            searchBox(
              MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.width,
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
                    color: const Color.fromRGBO(99, 99, 102, 100),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
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
                    "Plantation",
                  ),
                  labelStyle: GoogleFonts.nunito(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  selectedColor: const Color.fromRGBO(1, 163, 159, 100),
                  selected: true,
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 100),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none, //the outline color
                    borderRadius: BorderRadius.circular(52),
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
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 100),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xFf8e8e93),
                    ), //the outline color
                    borderRadius: BorderRadius.circular(52),
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
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 100),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xFf8e8e93),
                    ), //the outline color
                    borderRadius: BorderRadius.circular(52),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.53),
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/tabs');
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
          ],
        ),
      ),
    );
  }

  Widget searchBox(double height, double width) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: TextField(
        controller: searchQueryController,
        textAlignVertical: TextAlignVertical.center,
        // onChanged: (value) {
        //   setState(() {
        //     ontracklist = _runFilter(value);
        //     delayedlist = _runFilter2(value);
        //   });
        // },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: height * 0.005, horizontal: width / 20),
          hintText: "Search for skills",
          hintStyle: GoogleFonts.nunito(
            color: const Color.fromRGBO(99, 99, 102, 100),
            fontSize: 16,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey.withOpacity(0.5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.4,
              color: Color.fromRGBO(209, 209, 214, 100),
            ),
          ),
        ),
      ),
    );
  }
}
