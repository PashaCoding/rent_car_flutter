import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbarClass {
  static AppBar customAppbar(String yourTitleText,VoidCallback backArrow,
          {String yourActionText = "Skip"}) =>
      AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        leading: IconButton(
          onPressed:backArrow,
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff000000),
            size: 17,
          ),
        ),
        title: CustomTextClass.customText(
          yourTitleText,
          0xffBC0420,
          22.0.sp,
          yourFontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: CustomTextClass.customText(
              yourActionText,
               0xffBC0420,
               16.0.sp,
              yourFontWeight: FontWeight.w700,
            ),
          ),
        ],
      );
  static AppBar customAppBar2(String yourText2)=>AppBar(
    elevation: 0,
    backgroundColor: const Color(0xffFFFFFF),
    leading: IconButton(
      onPressed: (){},
      icon:const Icon(Icons.arrow_back_ios_sharp,size:17,color: Color(0xff000000),),
    ),
    title: CustomTextClass.customText(yourText2,0xff000000, 20.sp,yourFontWeight: FontWeight.w700),
    centerTitle: true,
  );
}
