import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widgets/appbar_custom_class.dart';
import '../../widgets/book_now.dart';
import '../../widgets/text_custom_class.dart';

class BookNowTime extends StatefulWidget {
  const BookNowTime({Key? key}) : super(key: key);

  @override
  State<BookNowTime> createState() => _BookNowTimeState();
}
String? getTime;
String? getDate;
class _BookNowTimeState extends State<BookNowTime> {
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
            SizedBox(height:30.h ,),
            CustomTextClass.customText("Select Date", 0xff000000, 12.sp,
                yourFontWeight: FontWeight.w700),
                SizedBox(height:10.h ,),
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
                        context: context, //context of current state
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );

                    if(pickedDate != null ){
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      setState(() {
                        getDate=formattedDate;
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
              padding: EdgeInsets.symmetric(vertical:20.0.h),
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
                  padding: EdgeInsets.only(top:10.0.h,bottom:20.h),
                  child: CustomTextClass.customText("Pick Up Address", 0xff000000, 12.sp,
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
                padding: EdgeInsets.only(top:20.0.h,bottom: 10.h),
                child: CustomTextClass.customText("Upload Identity", 0xff000000, 12.sp,
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
                                    color: const Color(0xffC4C4C4)
                                        .withOpacity(0.5),
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
                Padding(
                  padding: EdgeInsets.only(top:20.0.h,bottom: 10.h),
                  child: CustomTextClass.customText("Passport Front Page", 0xff000000, 12.sp,
                  yourFontWeight: FontWeight.w700),
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
              ]),
        ),
      ),
    );
  }
}
