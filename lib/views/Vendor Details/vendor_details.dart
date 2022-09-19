import 'package:first_project/widgets/custom_button.dart';
import 'package:first_project/widgets/custom_icon.dart';
import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VendorDetails extends StatelessWidget {
  const VendorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Positioned(
                          top: 101.h,
                          height: 533.h,
                          width: 414.w,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(30))),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 120.0.h, left: 30.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: CustomTextClass.customText(
                                        "Personal information",
                                        0xff444444,
                                        16.sp,
                                        yourFontWeight: FontWeight.w500,
                                        yourFontFamily: "Roboto"),
                                  ),
                                  returnListTile(Icons.phone_android_outlined,
                                      "+1 123 123 1234"),
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  returnListTile(
                                      Icons.mail, "jaylonherwitz12@gmail.com"),
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  returnListTile(
                                      Icons.date_range, "May 05,1999"),
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  returnListTile(Icons.language, "English"),
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  returnListTile(Icons.location_on_outlined,
                                      "RM6 NL, PO 2452, Maldives"),
                                  SizedBox(
                                    height: 56.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.w, right: 50.w),
                                    child: CustomButton.customGradientButton(
                                        "Message", () {}),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 35.h,
                          left: 50.w,
                          height: 170.h,
                          width: 315.w,
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.only(top:52.0.h),
                              child: Column(
                                children: [
                                  CustomTextClass.customText(
                                      "Jaylon Herwitz", 0xff444444, 20.sp,
                                      yourFontWeight: FontWeight.w600,
                                      yourFontFamily: "Roboto"),
                                  const Divider(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 47.0.w),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                              text: "120",
                                              style: TextStyle(
                                                color: const Color(0xff444444),
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Roboto",
                                              ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:"\nTotal Rent Out",
                                             style:TextStyle(
                                                color: const Color(0xff868686),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Roboto",
                                              ),
                                            )
                                          ]),

                                        ),
                                      ),
                                      const VerticalDivider(),
                                      Padding(
                                        padding: EdgeInsets.only(left: 47.0.w),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                              text: "120",
                                              style: TextStyle(
                                                color: const Color(0xff444444),
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Roboto",
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text:"\nTotal Rent Out",
                                                  style:TextStyle(
                                                    color: const Color(0xff868686),
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Roboto",
                                                  ),
                                                )
                                              ]),

                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 171.w,
                          height: 70.h,
                          width: 70.w,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle,
                              image: DecorationImage(image:AssetImage("assets/Images/profile.png"))
                            ),
                          ),
                        ),
                        Positioned(
                          left: 191.w,
                          top: 64.h,
                          height: 11.h,
                          width: 30.w,
                          child: Container(
                            color: const Color(0xffFFFFFF),
                            height: 11.h,
                            width: 30.w,
                              child: Padding(
                                padding:EdgeInsets.only(left:5.0.w,top:2.h ),
                                child: Row(
                                  children: [
                                    CustomIconClass.customIcon(0xffFFC107,6),
                                    SizedBox(width: 2.w,),
                                    CustomTextClass.customText(
                                        "4.5",
                                        0xff9A9A9A,
                                        8.sp,
                                        yourFontWeight: FontWeight.w400,
                                        yourFontFamily: "Roboto"),
                                  ],
                                ),
                              ),
                          ),
                        ),
                      ],
                    );
                  });
            }),
      ),
    );
  }

  SizedBox returnListTile(IconData iconData, String text) => SizedBox(
        height: 16.h,
        child: ListTile(
          leading: Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Icon(
              iconData,
              color: const Color(0xff868686),
              size: 14,
            ),
          ),
          title: CustomTextClass.customText(text, 0xff868686, 14.sp,
              yourFontFamily: "Roboto"),
        ),
      );
}
