import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widgets/appbar_custom_class.dart';
import '../../widgets/book_now.dart';
import '../../widgets/text_custom_class.dart';

class BookNowDuration extends StatefulWidget {
  const BookNowDuration({Key? key}) : super(key: key);

  @override
  State<BookNowDuration> createState() => _BookNowDurationState();
}

String select = "1";
String newHours = "";
String newMonths = "";
String newDays = "";
String? getTime;
String? getDate;

class _BookNowDurationState extends State<BookNowDuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Book Now"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BookNowCustom(
                    vehicleName: "Rolce Royce",
                    cityName: "New york",
                    price: "20.00",
                    rating: "4.5")
                .bookNowF(),
            SizedBox(
              height: 30.h,
            ),
            CustomTextClass.customText("Duration Type", 0xff000000, 12.sp,
                yourFontWeight: FontWeight.w700),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 225.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  width: 1,
                  color: const Color(0xffC4C4C4).withOpacity(.5),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 33.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: newHours,
                            iconSize: 9,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff000000),
                            ),
                            isExpanded: true,
                            isDense: true,
                            menuMaxHeight: 200.h,
                            onChanged: (newValue) {
                              setState(() {
                                newHours = newValue.toString();
                              });
                            },
                            items: [
                              const DropdownMenuItem<String>(
                                value: "",
                                child: Text("Hours"),
                              ),
                              ...<String>[
                                "1",
                                "2",
                                "3",
                                "4",
                              ].map<DropdownMenuItem<String>>((String e) {
                                return DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                );
                              }).toList(),
                            ]),
                      ),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 32.h,
                    width: 225.w,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: newDays,
                            iconSize: 9,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff000000),
                            ),
                            isExpanded: true,
                            isDense: true,
                            menuMaxHeight: 200.h,
                            onChanged: (newValue) {
                              setState(() {
                                newDays = newValue.toString();
                              });
                            },
                            items: [
                              const DropdownMenuItem<String>(
                                value: "",
                                child: Text("Days"),
                              ),
                              ...<String>["1", "2", "3", "4"]
                                  .map<DropdownMenuItem<String>>((String e) {
                                return DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                );
                              }).toList(),
                            ]),
                      ),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 32.h,
                    width: 225.w,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: newMonths,
                            iconSize: 9,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff000000),
                            ),
                            isExpanded: true,
                            isDense: true,
                            menuMaxHeight: 200.h,
                            onChanged: (newValue) {
                              setState(() {
                                newMonths = newValue.toString();
                              });
                            },
                            items: [
                              const DropdownMenuItem<String>(
                                value: "",
                                child: Text("Months"),
                              ),
                              ...<String>["1", "2", "3", "4"]
                                  .map<DropdownMenuItem<String>>((String e) {
                                return DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                );
                              }).toList(),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomTextClass.customText("Select Date", 0xff000000, 12.sp,
                yourFontWeight: FontWeight.w700),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 33.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: const Color(0xffC4C4C4).withOpacity(.5),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0.w),
                child: GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        //context of current state
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));

                    if (pickedDate != null) {
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      setState(() {
                        getDate = formattedDate;
                      });
                    }
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.date_range,
                        color: Color(0xffC4C4C4),
                        size: 15,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomTextClass.customText(
                          getDate != null ? "$getDate" : "dd/mm/yyyy",
                          0xffC4C4C4,
                          8.sp),
                      //${getDate!.day}/${getDate!.month}/${getDate!.year}
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0.h),
              child: CustomTextClass.customText("Time", 0xff000000, 12.sp,
                  yourFontWeight: FontWeight.w700),
            ),
            Container(
              height: 33.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: const Color(0xffC4C4C4).withOpacity(.5),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0.w),
                child: GestureDetector(
                  onTap: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      initialTime: TimeOfDay.now(),
                      context: context,
                    );
                    if (pickedTime != null) {
                      DateTime parsedTime = DateFormat.jm()
                          .parse(pickedTime.format(context).toString());

                      String formattedTime =
                          DateFormat('HH:mm a').format(parsedTime);

                      setState(() {
                        getTime = formattedTime; //set the value of text field.
                      });
                    }
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.access_time_outlined,
                        color: Color(0xffC4C4C4),
                        size: 15,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustomTextClass.customText(
                          getDate != null ? "$getTime" : "02:00 AM",
                          0xffC4C4C4,
                          8.sp),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h, bottom: 20.h),
              child: CustomTextClass.customText("Name", 0xff000000, 12.sp,
                  yourFontWeight: FontWeight.w700),
            ),
            Container(
              height: 33.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: const Color(0xffC4C4C4).withOpacity(.5),
                  width: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h, bottom: 20.h),
              child: CustomTextClass.customText("Address", 0xff000000, 12.sp,
                  yourFontWeight: FontWeight.w700),
            ),
            Container(
              height: 33.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: const Color(0xffC4C4C4).withOpacity(.5),
                  width: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h, bottom: 20.h),
              child: CustomTextClass.customText("City", 0xff000000, 12.sp,
                  yourFontWeight: FontWeight.w700),
            ),
            Container(
              height: 33.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: const Color(0xffC4C4C4).withOpacity(.5),
                  width: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h, bottom: 20.h),
              child: CustomTextClass.customText("Address", 0xff000000, 12.sp,
                  yourFontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        select = "2";
                      });
                    },
                    child: Icon(
                      Icons.circle_outlined,
                      color:
                          select != "2" ? const Color(0xff000000) : Colors.red,
                    )),
                SizedBox(width: 20.w,),
                CustomTextClass.customText("Pick Up", 0xff000000, 12.sp,
                    yourFontFamily: "Roboto"),
                SizedBox(width: 72.w,),
                InkWell(
                    onTap: () {
                      setState(() {
                        select = "3";
                      });
                    },
                    child: Icon(
                      Icons.circle_outlined,
                      color:
                          select != "3" ? const Color(0xff000000) : Colors.red,
                    )),
                SizedBox(width: 20.w,),
                CustomTextClass.customText("Delivery", 0xff000000, 12.sp,
                    yourFontFamily: "Roboto"),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0.h, bottom: 10.h),
              child: CustomTextClass.customText(
                  "Upload Identity", 0xff000000, 12.sp,
                  yourFontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 109.h,
                  width: 157.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffC4C4C4).withOpacity(0.5),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/Images/addaccount.png",
                      height: 50.h,
                      width: 70.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 109.h,
                  width: 157.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffC4C4C4).withOpacity(0.5),
                    ),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 60.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Image.asset(
                            "assets/Images/imageSelect.png",
                            height: 35.h,
                            width: 35.w,
                            fit: BoxFit.fill,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 40.w,
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: const Color(0xffC4C4C4).withOpacity(0.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomTextClass.customText(
                        "Passport Front Page", 0xff000000, 12.sp,
                        yourFontWeight: FontWeight.w700),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 109.h,
                      width: 157.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffC4C4C4).withOpacity(0.5),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/Images/passport.png",
                          height: 56.h,
                          width: 61.w,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomTextClass.customText(
                        "Passport Front Page", 0xff000000, 12.sp,
                        yourFontWeight: FontWeight.w700),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 109.h,
                      width: 157.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffC4C4C4).withOpacity(0.5),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/Images/durationprofile.png",
                          height: 56.h,
                          width: 61.w,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
          ]),
        ),
      ),
    );
  }
}
