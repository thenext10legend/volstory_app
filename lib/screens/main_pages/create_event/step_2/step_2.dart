// ignore_for_file: deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quantity_input/quantity_input.dart';

import '../../../../utils/common_widgets.dart';

class Step2 extends StatefulWidget {
  const Step2({super.key});
  static bool setCustomRecurrence = false;
  static bool isRecurringEvent = false;
  static Set selectedWeekDays = {};
  static bool createTimeSlots = false;
  static int minSlotMembers = 1;
  static int maxSlotMembers = 100;

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
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
          radius: const Radius.circular(20),
          scrollbarOrientation: ScrollbarOrientation.right,
          //  isAlwaysShown: true,
          child: SingleChildScrollView(
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              shrinkWrap: true,
              children: [
                bottomAppbar(2),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Event start",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: _textFormFieldCreateEventStep2("Date"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 2,
                        child: _textFormFieldCreateEventStep2("Time"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 1,
                        child: DropdownButtonFormField(
                          onChanged: (item) {},
                          items: [],
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: "IST",
                            hintStyle: GoogleFonts.nunito(
                              fontSize: 15,
                              color: const Color.fromRGBO(99, 99, 102, 100),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(1, 163, 159, 100),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(209, 209, 214, 100),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Event end",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: _textFormFieldCreateEventStep2("Date"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 2,
                        child: _textFormFieldCreateEventStep2("Time"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "Last date of joining",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: _textFormFieldCreateEventStep2("Date"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 2,
                        child: _textFormFieldCreateEventStep2("Time"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Divider(
                  thickness: 2,
                  color: Color.fromRGBO(242, 242, 245, 100),
                ),
                // ListTile(
                //   title: Row(
                //     children: [
                //       Text(
                //         "Recurring event",
                //         style: GoogleFonts.nunito(
                //           fontSize: 18,
                //           color: const Color.fromRGBO(72, 72, 74, 100),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 10,
                //       ),
                //       const Icon(
                //         Icons.info_outline_rounded,
                //         color: Color.fromRGBO(1, 163, 159, 100),
                //       ),
                //     ],
                //   ),
                //   trailing: Switch(
                //     inactiveThumbColor: Colors.white,
                //     activeColor: const Color.fromRGBO(1, 163, 159, 100),
                //     value: Step2.isRecurringEvent,
                //     onChanged: (value) {
                //       if (value == true) {
                //         int? groupValue = 0;
                //         int? selectedEndDate = 0;
                //         showModalBottomSheet(
                //             isScrollControlled: true,
                //             useSafeArea: true,
                //             shape: const RoundedRectangleBorder(
                //               borderRadius: BorderRadius.vertical(
                //                 top: Radius.circular(20.0),
                //               ),
                //             ),
                //             context: context,
                //             builder: (context) {
                //               return StatefulBuilder(
                //                   builder: (context, setState) {
                //                 return SingleChildScrollView(
                //                   child: Container(
                //                     decoration: const BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.vertical(
                //                         top: Radius.circular(16),
                //                       ),
                //                     ),
                //                     width: double.infinity,
                //                     height: MediaQuery.of(context).size.height *
                //                         0.9,
                //                     child: Padding(
                //                       padding: const EdgeInsets.symmetric(
                //                         horizontal: 8.0,
                //                         vertical: 16,
                //                       ),
                //                       child: Step2.setCustomRecurrence
                //                           ? Column(
                //                               crossAxisAlignment:
                //                                   CrossAxisAlignment.start,
                //                               children: [
                //                                 ListTile(
                //                                   title: Text(
                //                                     "Set custom reccurence",
                //                                     style: GoogleFonts.nunito(
                //                                       fontSize: 18,
                //                                       color:
                //                                           const Color.fromRGBO(
                //                                               1, 163, 159, 100),
                //                                     ),
                //                                   ),
                //                                   trailing: Switch(
                //                                     inactiveThumbColor:
                //                                         Colors.white,
                //                                     activeColor:
                //                                         const Color.fromRGBO(
                //                                             1, 163, 159, 100),
                //                                     value: Step2
                //                                         .setCustomRecurrence,
                //                                     onChanged: (value) {
                //                                       setState(() {
                //                                         Step2.setCustomRecurrence =
                //                                             value;
                //                                       });
                //                                     },
                //                                   ),
                //                                 ),
                //                                 const Divider(
                //                                   thickness: 2,
                //                                   color: Color.fromRGBO(
                //                                       242, 242, 245, 100),
                //                                 ),
                //                                 RadioListTile(
                //                                   activeColor:
                //                                       const Color.fromRGBO(
                //                                           1, 163, 159, 100),
                //                                   value: 0,
                //                                   groupValue: groupValue,
                //                                   title: Text(
                //                                     "Repeat Every",
                //                                     style: GoogleFonts.nunito(
                //                                       fontSize: 18,
                //                                       fontWeight:
                //                                           FontWeight.w600,
                //                                     ),
                //                                   ),
                //                                   subtitle: groupValue == 0
                //                                       ? repeatEveryTileSubTitle()
                //                                       : null,
                //                                   onChanged: (value) {
                //                                     setState(() {
                //                                       groupValue = value;
                //                                     });
                //                                   },
                //                                 ),
                //                                 const Divider(
                //                                   thickness: 2,
                //                                   color: Color.fromRGBO(
                //                                       242, 242, 245, 100),
                //                                 ),
                //                                 RadioListTile(
                //                                   activeColor:
                //                                       const Color.fromRGBO(
                //                                           1, 163, 159, 100),
                //                                   value: 1,
                //                                   groupValue: groupValue,
                //                                   title: Text(
                //                                     "Repeat Every",
                //                                     style: GoogleFonts.nunito(
                //                                       fontSize: 18,
                //                                       fontWeight:
                //                                           FontWeight.w600,
                //                                     ),
                //                                   ),
                //                                   subtitle: groupValue == 1
                //                                       ? repeatOnTileSubTitle(
                //                                           selectedWeekDays: Step2
                //                                               .selectedWeekDays,
                //                                           onSelected:
                //                                               (selectedWeekDays) {
                //                                             setState(() {
                //                                               Step2.selectedWeekDays =
                //                                                   selectedWeekDays;
                //                                             });
                //                                           },
                //                                         )
                //                                       : null,
                //                                   onChanged: (value) {
                //                                     setState(() {
                //                                       groupValue = value;
                //                                     });
                //                                   },
                //                                 ),
                //                                 const Divider(
                //                                   thickness: 14,
                //                                   color: Color.fromRGBO(
                //                                       242, 242, 245, 100),
                //                                 ),
                //                                 Padding(
                //                                   padding: const EdgeInsets.all(
                //                                       16.0),
                //                                   child: Text(
                //                                     "End Recurrence",
                //                                     style: GoogleFonts.nunito(
                //                                       fontSize: 18,
                //                                       fontWeight:
                //                                           FontWeight.w600,
                //                                     ),
                //                                   ),
                //                                 ),
                //                                 RadioListTile(
                //                                   activeColor:
                //                                       const Color.fromRGBO(
                //                                           1, 163, 159, 100),
                //                                   value: 0,
                //                                   groupValue: selectedEndDate,
                //                                   title: Text(
                //                                     "Never",
                //                                     style: GoogleFonts.nunito(
                //                                       fontSize: 18,
                //                                       fontWeight:
                //                                           FontWeight.w600,
                //                                     ),
                //                                   ),
                //                                   onChanged: (value) {
                //                                     setState(() {
                //                                       selectedEndDate = value;
                //                                     });
                //                                   },
                //                                 ),
                //                                 Row(
                //                                   mainAxisAlignment:
                //                                       MainAxisAlignment.start,
                //                                   children: [
                //                                     Container(
                //                                       width: 150,
                //                                       child: RadioListTile(
                //                                         activeColor: const Color
                //                                                 .fromRGBO(
                //                                             1, 163, 159, 100),
                //                                         value: 1,
                //                                         groupValue:
                //                                             selectedEndDate,
                //                                         title: Text(
                //                                           "On",
                //                                           style: GoogleFonts
                //                                               .nunito(
                //                                             fontSize: 18,
                //                                             fontWeight:
                //                                                 FontWeight.w600,
                //                                           ),
                //                                         ),
                //                                         onChanged: (value) {
                //                                           setState(() {
                //                                             selectedEndDate =
                //                                                 value;
                //                                           });
                //                                         },
                //                                       ),
                //                                     ),
                //                                     Container(
                //                                       width: 150,
                //                                       child: selectedEndDate ==
                //                                               1
                //                                           ? _textFormFieldCreateEventStep2(
                //                                               "")
                //                                           : Container(),
                //                                     )
                //                                   ],
                //                                 ),
                //                                 Row(
                //                                   mainAxisAlignment:
                //                                       MainAxisAlignment
                //                                           .spaceBetween,
                //                                   children: [
                //                                     Container(
                //                                       width: 150,
                //                                       child: RadioListTile(
                //                                         activeColor: const Color
                //                                                 .fromRGBO(
                //                                             1, 163, 159, 100),
                //                                         value: 2,
                //                                         groupValue:
                //                                             selectedEndDate,
                //                                         title: Text(
                //                                           "After",
                //                                           style: GoogleFonts
                //                                               .nunito(
                //                                             fontSize: 18,
                //                                             fontWeight:
                //                                                 FontWeight.w600,
                //                                           ),
                //                                         ),
                //                                         onChanged: (value) {
                //                                           setState(() {
                //                                             selectedEndDate =
                //                                                 value;
                //                                           });
                //                                         },
                //                                       ),
                //                                     ),
                //                                     selectedEndDate == 2
                //                                         ? Container(
                //                                             width: 50,
                //                                             child:
                //                                                 _textFormFieldCreateEventStep2(
                //                                                     ""),
                //                                           )
                //                                         : Container(),
                //                                     selectedEndDate == 2
                //                                         ? Text(
                //                                             "Occurences",
                //                                             style: GoogleFonts
                //                                                 .nunito(
                //                                               fontSize: 16,
                //                                               fontWeight:
                //                                                   FontWeight
                //                                                       .w600,
                //                                             ),
                //                                           )
                //                                         : Container(),
                //                                   ],
                //                                 ),
                //                                 Expanded(
                //                                   child: Align(
                //                                     alignment:
                //                                         Alignment.bottomCenter,
                //                                     child: Column(
                //                                       mainAxisAlignment:
                //                                           MainAxisAlignment.end,
                //                                       children: [
                //                                         Padding(
                //                                           padding:
                //                                               const EdgeInsets
                //                                                       .symmetric(
                //                                                   vertical: 8.0,
                //                                                   horizontal:
                //                                                       8.0),
                //                                           child: Container(
                //                                             width:
                //                                                 double.infinity,
                //                                             child:
                //                                                 MaterialButton(
                //                                               onPressed: () {
                //                                                 Navigator.of(
                //                                                         context)
                //                                                     .pop();
                //                                               },
                //                                               color: const Color
                //                                                       .fromRGBO(
                //                                                   1,
                //                                                   163,
                //                                                   159,
                //                                                   100),
                //                                               shape:
                //                                                   RoundedRectangleBorder(
                //                                                 borderRadius:
                //                                                     BorderRadius
                //                                                         .circular(
                //                                                             5),
                //                                               ),
                //                                               padding: const EdgeInsets
                //                                                       .symmetric(
                //                                                   vertical: 15,
                //                                                   horizontal:
                //                                                       30),
                //                                               child: Text(
                //                                                 "Done",
                //                                                 style: GoogleFonts.nunito(
                //                                                     color: Colors
                //                                                         .white,
                //                                                     fontWeight:
                //                                                         FontWeight
                //                                                             .w500),
                //                                               ),
                //                                             ),
                //                                           ),
                //                                         ),
                //                                         const Divider(
                //                                           thickness: 2,
                //                                           color: Color.fromRGBO(
                //                                               242,
                //                                               242,
                //                                               245,
                //                                               100),
                //                                         ),
                //                                         TextButton(
                //                                           onPressed: () {
                //                                             Navigator.of(
                //                                                     context)
                //                                                 .pop();
                //                                             setState(() {
                //                                               value = false;
                //                                             });
                //                                           },
                //                                           child: Text(
                //                                             "Close",
                //                                             style: GoogleFonts
                //                                                 .nunito(
                //                                               color: const Color
                //                                                       .fromRGBO(
                //                                                   253,
                //                                                   87,
                //                                                   87,
                //                                                   100),
                //                                               fontSize: 18,
                //                                             ),
                //                                           ),
                //                                         ),
                //                                       ],
                //                                     ),
                //                                   ),
                //                                 ),
                //                               ],
                //                             )
                //                           : Column(
                //                               crossAxisAlignment:
                //                                   CrossAxisAlignment.start,
                //                               children: [
                //                                 const SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 Text(
                //                                   "Set recurrence",
                //                                   style: GoogleFonts.nunito(
                //                                     fontSize: 18,
                //                                     color: const Color.fromRGBO(
                //                                         1, 163, 159, 100),
                //                                     fontWeight: FontWeight.bold,
                //                                   ),
                //                                 ),
                //                                 const SizedBox(
                //                                   height: 10,
                //                                 ),
                //                                 Text(
                //                                   "Everyday",
                //                                   style: GoogleFonts.nunito(
                //                                     fontSize: 16,
                //                                   ),
                //                                 ),
                //                                 const SizedBox(
                //                                   height: 15,
                //                                 ),
                //                                 Text(
                //                                   "Every Week",
                //                                   style: GoogleFonts.nunito(
                //                                     fontSize: 16,
                //                                   ),
                //                                 ),
                //                                 const SizedBox(
                //                                   height: 15,
                //                                 ),
                //                                 Text(
                //                                   "Every Month",
                //                                   style: GoogleFonts.nunito(
                //                                     fontSize: 16,
                //                                   ),
                //                                 ),
                //                                 const SizedBox(
                //                                   height: 15,
                //                                 ),
                //                                 Text(
                //                                   "Every Year",
                //                                   style: GoogleFonts.nunito(
                //                                     fontSize: 16,
                //                                   ),
                //                                 ),
                //                                 const SizedBox(
                //                                   height: 15,
                //                                 ),
                //                                 const Divider(
                //                                   thickness: 2,
                //                                   color: Color.fromRGBO(
                //                                       242, 242, 245, 100),
                //                                 ),
                //                                 ListTile(
                //                                   title: Text(
                //                                     "Set custom reccurence",
                //                                     style: GoogleFonts.nunito(
                //                                       fontSize: 18,
                //                                       color:
                //                                           const Color.fromRGBO(
                //                                               72, 72, 74, 100),
                //                                     ),
                //                                   ),
                //                                   trailing: Switch(
                //                                     inactiveThumbColor:
                //                                         Colors.white,
                //                                     activeColor:
                //                                         const Color.fromRGBO(
                //                                             1, 163, 159, 100),
                //                                     value: Step2
                //                                         .setCustomRecurrence,
                //                                     onChanged: (value) {
                //                                       setState(() {
                //                                         Step2.setCustomRecurrence =
                //                                             value;
                //                                       });
                //                                     },
                //                                   ),
                //                                 ),
                //                                 const Divider(
                //                                   thickness: 2,
                //                                   color: Color.fromRGBO(
                //                                       242, 242, 245, 100),
                //                                 ),
                //                                 Expanded(
                //                                   child: Align(
                //                                     alignment:
                //                                         Alignment.bottomCenter,
                //                                     child: Column(
                //                                       mainAxisAlignment:
                //                                           MainAxisAlignment.end,
                //                                       children: [
                //                                         const Divider(
                //                                           thickness: 2,
                //                                           color: Color.fromRGBO(
                //                                               242,
                //                                               242,
                //                                               245,
                //                                               100),
                //                                         ),
                //                                         TextButton(
                //                                           onPressed: () {
                //                                             Navigator.of(
                //                                                     context)
                //                                                 .pop();
                //                                             setState(() {
                //                                               value = false;
                //                                             });
                //                                           },
                //                                           child: Text(
                //                                             "Close",
                //                                             style: GoogleFonts
                //                                                 .nunito(
                //                                               color: const Color
                //                                                       .fromRGBO(
                //                                                   253,
                //                                                   87,
                //                                                   87,
                //                                                   100),
                //                                               fontSize: 18,
                //                                             ),
                //                                           ),
                //                                         ),
                //                                       ],
                //                                     ),
                //                                   ),
                //                                 )
                //                               ],
                //                             ),
                //                     ),
                //                   ),
                //                 );
                //               });
                //             });
                //       }
                //       setState(() {
                //         Step2.isRecurringEvent = value;
                //       });
                //     },
                //   ),
                // ),
                const Divider(
                  thickness: 2,
                  color: Color.fromRGBO(242, 242, 245, 100),
                ),
                const SizedBox(
                  height: 30,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(
                        "Time slots",
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Step2.createTimeSlots
                                        ? Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Create time slot",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: const Color.fromRGBO(
                                                      1, 163, 159, 100),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                "Title",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              _textFormFieldCreateEventStep2(
                                                  "Name this slot"),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Text(
                                                "Set Time",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Flexible(
                                                    flex: 2,
                                                    child:
                                                        _textFormFieldCreateEventStep2(
                                                            "Time"),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Flexible(
                                                    flex: 2,
                                                    child: Text(
                                                      "to",
                                                      style: GoogleFonts.nunito(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Flexible(
                                                    flex: 2,
                                                    child:
                                                        _textFormFieldCreateEventStep2(
                                                            "Time"),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 25,
                                              ),
                                              const Divider(
                                                thickness: 2,
                                                color: Color.fromRGBO(
                                                    209, 209, 214, 100),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                "Number of slot members",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Min",
                                                    style: GoogleFonts.nunito(
                                                      color:
                                                          const Color.fromRGBO(
                                                              99, 99, 102, 100),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  _eventTimeSlotsMembersCount(
                                                      Step2.minSlotMembers,
                                                      (value) {
                                                    setState(() {
                                                      Step2.minSlotMembers =
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
                                                      color:
                                                          const Color.fromRGBO(
                                                              99, 99, 102, 100),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  _eventTimeSlotsMembersCount(
                                                      Step2.maxSlotMembers,
                                                      (value) {
                                                    setState(() {
                                                      Step2.maxSlotMembers =
                                                          int.parse(
                                                              value.replaceAll(
                                                                  ',', ''));
                                                    });
                                                  }, Step2.maxSlotMembers,
                                                      Step2.maxSlotMembers, 70),
                                                ],
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 8.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: MaterialButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          });
                                                        },
                                                        color: const Color
                                                            .fromRGBO(
                                                            1, 163, 159, 100),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 15,
                                                                horizontal: 30),
                                                        child: Text(
                                                          "Done",
                                                          style: GoogleFonts
                                                              .nunito(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
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
                                                },
                                                child: Center(
                                                  child: Text(
                                                    "Close",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.nunito(
                                                      color:
                                                          const Color.fromRGBO(
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
                                                  'assets/images/timeSlotsIcon.png'),
                                              const SizedBox(
                                                height: 50,
                                              ),
                                              Text(
                                                "Time Slots",
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
                                                "Creating time slots enables you to create different batches for your event. This might help in case you have a large number of followers; or if you simply wish to provide your followers the option to join at various timings.",
                                                style: GoogleFonts.nunito(
                                                  fontSize: 18,
                                                  color: const Color.fromRGBO(
                                                      72, 72, 84, 100),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "Note",
                                                      style: GoogleFonts.nunito(
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        fontSize: 18,
                                                        color: const Color
                                                            .fromRGBO(
                                                            72, 72, 84, 100),
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ": A person can participate in only one time slot at a time.",
                                                      style: GoogleFonts.nunito(
                                                        fontSize: 18,
                                                        color: const Color
                                                            .fromRGBO(
                                                            72, 72, 84, 100),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 8.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: MaterialButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            Step2.createTimeSlots =
                                                                true;
                                                          });
                                                        },
                                                        color: const Color
                                                            .fromRGBO(
                                                            1, 163, 159, 100),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 15,
                                                                horizontal: 30),
                                                        child: Text(
                                                          "Create Time Slots",
                                                          style: GoogleFonts
                                                              .nunito(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
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
      ),
    );
  }
}

Widget _textFormFieldCreateEventStep2(String hintText) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.nunito(
        fontSize: 15,
        color: const Color.fromRGBO(99, 99, 102, 100),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: Color.fromRGBO(1, 163, 159, 100),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: Color.fromRGBO(209, 209, 214, 100),
        ),
      ),
    ),
  );
}

class repeatEveryTileSubTitle extends StatefulWidget {
  const repeatEveryTileSubTitle({super.key});

  @override
  State<repeatEveryTileSubTitle> createState() =>
      _repeatEveryTileSubTitleState();
}

class _repeatEveryTileSubTitleState extends State<repeatEveryTileSubTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: TextFormField(
            maxLength: 1,
            decoration: InputDecoration(
                hintText: '1',
                hintStyle: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(1, 163, 159, 100))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(209, 209, 214, 100)))),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 2,
          child: DropdownButtonFormField(
            onChanged: (value) {},
            items: [],
            decoration: InputDecoration(
                hintText: 'Week',
                hintStyle: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(1, 163, 159, 100))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(209, 209, 214, 100)))),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(),
        )
      ],
    );
  }
}

class repeatOnTileSubTitle extends StatefulWidget {
  const repeatOnTileSubTitle({
    super.key,
    required this.selectedWeekDays,
    required this.onSelected,
  });
  final Set selectedWeekDays;
  final ValueChanged<Set> onSelected;
  @override
  State<repeatOnTileSubTitle> createState() => _repeatOnTileSubTitleState();
}

class _repeatOnTileSubTitleState extends State<repeatOnTileSubTitle> {
  List weekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 8,
      children: weekDays.map((weekDay) {
        return FilterChip(
          showCheckmark: false,
          selectedColor: const Color.fromRGBO(1, 163, 159, 100),
          shape: const CircleBorder(),
          label: Text(weekDay.toString().substring(0, 1).toUpperCase()),
          labelStyle: widget.selectedWeekDays.contains(weekDay)
              ? GoogleFonts.nunito(color: Colors.white)
              : null,
          selected: widget.selectedWeekDays.contains(weekDay),
          onSelected: (isSelected) {
            setState(() {
              if (isSelected) {
                widget.selectedWeekDays.add(weekDay);
              } else {
                widget.selectedWeekDays.remove(weekDay);
              }
              widget.onSelected(widget.selectedWeekDays);
            });
          },
        );
      }).toList(),
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
