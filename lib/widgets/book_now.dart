import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_icon.dart';

class BookNowCustom {
  String vehicleName;
  String cityName;
  String price;
  String rating;

  BookNowCustom(
      {required this.vehicleName, required this.cityName, required this.price,required this.rating});

  Column bookNowF() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextClass.customText("Selected Vehicle", 0xff000000, 15.sp,
              yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
          SizedBox(height: 5.h,),
          SizedBox(
            height: 133.h,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  "assets/Images/carproduct.png",
                  height: 133.h,
                  width: 209.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 26.w,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width:130.w,
                      child:
                   CustomTextClass.customText(vehicleName, 0xff000000, 15.sp, yourFontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 3.h,),
                    Row(
                      children: [
                        CustomIconClass.customIcon(0xffF7B030, 11.sp),
                        CustomIconClass.customIcon(0xffF7B030, 11.sp),
                        CustomIconClass.customIcon(0xffF7B030, 11.sp),
                        CustomIconClass.customIcon(0xffF7B030, 11.sp),
                        CustomIconClass.customIcon(0xffC4C4C4, 11.sp),
                        SizedBox(width:4.w ,),
                        CustomTextClass.customText(
                            "($rating)", 0xff3C5FEA, 6.sp,
                            yourFontWeight: FontWeight.w700,
                        yourFontFamily: "Roboto"),
                      ],
                    ),
                    SizedBox(height: 3.h,),
                    CustomTextClass.customText(
                        "Location : $cityName", 0xff000000, 10.sp,
                        yourFontWeight: FontWeight.w500,
                        yourFontFamily: "Roboto"),
                    SizedBox(height: 13.h,),
                    CustomTextClass.customText(
                        "\$$price/hr", 0xffBC0420, 16.sp,
                        yourFontWeight: FontWeight.w700,
                        yourFontFamily: "Roboto"),
                  ],
                )
              ],
            ),
          )
        ],
      );
}
