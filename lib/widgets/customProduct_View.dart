import 'package:first_project/widgets/custom_icon.dart';
import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProductViewClass{
 static Container productView()=>Container(
    height: 131.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Image.asset("assets/Images/carproduct.png",
        width: 156,
        height: double.infinity,
        fit: BoxFit.fill,),
        Column(
          children: [
            CustomTextClass.customText("Rolce Royce", 0xff00000,15.sp,yourFontWeight: FontWeight.w700),
            Row(
              children: [
                CustomIconClass.customIcon(0xffFF7E00,11.0),
                CustomIconClass.customIcon(0xffFF7E00,11.0),
                CustomIconClass.customIcon(0xffFF7E00,11.0),
                CustomIconClass.customIcon(0xffFF7E00,11.0),
                CustomIconClass.customIcon(0xffC4C4C4,11.0),
                CustomTextClass.customText("(4.5)",0xff3C5FEA, 7.sp,yourFontWeight: FontWeight.w700),
                const Spacer(flex: 1,),
                CustomTextClass.customText("\$20.00/hr",0xffBC0420, 12.sp,yourFontWeight: FontWeight.w700),
              ],
            ),
            CustomTextClass.customText("Location : New york",0xff000000, 10.sp,yourFontWeight: FontWeight.w500),
          ],
        )
      ],
    ),
  );
}
