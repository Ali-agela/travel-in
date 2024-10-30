import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/screens/main_screens/search_screen.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/clickables/checkboxes.dart';
import 'package:travel_in/widgets/clickables/radio_button.dart';
import 'package:travel_in/widgets/clickables/slider.dart';
import 'package:travel_in/widgets/clickables/stars_filter_row.dart';
import 'package:travel_in/widgets/clickables/text_filter_row.dart';
import 'package:travel_in/widgets/dividers/filter_divider.dart';
import 'package:travel_in/widgets/rating/rating_stars.dart';
import 'package:travel_in/widgets/rating/ratings.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/text_field_widget.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  TextEditingController fromdateController = TextEditingController();
  TextEditingController todateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
      )),
      elevation: 15,
      shadowColor: Colors.black,
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        height: getSize(context).height * 0.85,
        width: getSize(context).width,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTitle(title: "فلترة النتائج"),
              Divider(
                color: dividercolor.withOpacity(0.5),
                thickness: 1,
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "التقييم",
                        fontSize: 16,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            StarsFilterRow(starsnumber: 1),
                            SizedBox(
                              width: 8,
                            ),
                            StarsFilterRow(starsnumber: 2),
                            SizedBox(
                              width: 8,
                            ),
                            StarsFilterRow(starsnumber: 3),
                            SizedBox(
                              width: 8,
                            ),
                            StarsFilterRow(starsnumber: 4),
                            SizedBox(
                              width: 8,
                            ),
                            StarsFilterRow(starsnumber: 5),
                            SizedBox(
                              width: 8,
                            ),
                          ]),
                    ),
                  ),
                  FilterDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "النوع",
                        fontSize: 16,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextFilterRow(
                              subtitle: "سياحة مرفهة",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            TextFilterRow(
                              subtitle: "رحلات تخييم",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            TextFilterRow(
                              subtitle: "رحلات بحرية",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            TextFilterRow(
                              subtitle: "رحلات صحراء",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                          ]),
                    ),
                  ),
                  FilterDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "التصنيف",
                        fontSize: 16,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextFilterRow(
                              subtitle: "عائلي",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            TextFilterRow(
                              subtitle: "شباب",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            TextFilterRow(
                              subtitle: "غير محدد",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 8,
                            ),
                          ]),
                    ),
                  ),
                  FilterDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "نطاق الأسعار",
                        fontSize: 16,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [SliderRange()]),
                    ),
                  ),
                  FilterDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "المدينة",
                        fontSize: 16,
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child: Column(
                      children: [
                        Checkboxes(subtitle: "طرابلس"),
                        Checkboxes(subtitle: "بنغازي"),
                        Checkboxes(subtitle: "راس الهلال"),
                        Checkboxes(subtitle: "البيضاء"),
                      ],
                    ),
                  ),
                  FilterDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "تاريخ الحجز",
                        fontSize: 16,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTitle(
                        title: "من",
                        fontSize: 14,
                        fontwight: FontWeight.normal,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                          onTap: () {
                            showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2023),
                                    lastDate: DateTime(2025))
                                .then((selectedDate) {
                              setState(() {
                                fromdateController.text = selectedDate!
                                    .toIso8601String()
                                    .substring(0, 10);
                              });
                            });
                          },
                          child: SizedBox(
                              height: 48,
                              width: getSize(context).width * 0.6,
                              child: TextFormField(
                                enabled: false,
                                controller: fromdateController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 8),
                                  filled: true,
                                  fillColor: Color(0xfff3f4f6),
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: GoogleFonts.cairo(
                                    color: darktxtcolor,
                                    fontSize: 16,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  suffix: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset(
                                      "assets/icons/calender_icon.png",
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTitle(
                        title: "إلى",
                        fontSize: 14,
                        fontwight: FontWeight.normal,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      GestureDetector(
                          onTap: () {
                            showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2023),
                                    lastDate: DateTime(2025))
                                .then((selectedDate) {
                              setState(() {
                                todateController.text = selectedDate!
                                    .toIso8601String()
                                    .substring(0, 10);
                              });
                            });
                          },
                          child: SizedBox(
                              height: 48,
                              width: getSize(context).width * 0.6,
                              child: TextFormField(
                                enabled: false,
                                controller: todateController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 8),
                                  filled: true,
                                  fillColor: Color(0xfff3f4f6),
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: GoogleFonts.cairo(
                                    color: darktxtcolor,
                                    fontSize: 16,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  suffix: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset(
                                      "assets/icons/calender_icon.png",
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ))),
                    ],
                  ),
                  FilterDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "عدد الغرف",
                        fontSize: 16,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadioButton(
                        options: ['1', '2', '3', '4', '5', '6'],
                      ),
                    ],
                  ),
                  FilterDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      CustomTitle(
                        title: "عدد الأفراد",
                        fontSize: 16,
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RadioButton(
                            options: [
                              '1',
                              '2',
                              '3',
                              '4',
                              '5',
                              '6',
                              '7',
                              '8',
                              '9',
                              '10'
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlueButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        buttonText: "تأكيد",
                        width: 100,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      whiteButton(
                        onTap: () {},
                        buttonText: "إلغاء",
                        width: 100,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
