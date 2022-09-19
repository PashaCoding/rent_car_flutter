import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileEditedCard {
  static SizedBox profileCard(String giveText, String giveHintText) => SizedBox(
        height: 110.h,
        width: double.infinity,
        child: Card(
          elevation: 10,
          color: const Color(0xffFFFFFF),
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextClass.customText(giveText, 0xff000000, 14.sp,
                    yourFontFamily: "Roboto"),
                SizedBox(
                  height: 9.h,
                ),
                SizedBox(
                  height: 38.h,
                  width: double.infinity,
                  // color: const Color(0xffE8E6EA),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: giveHintText,
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: const Color(0xffE8E6EA),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
