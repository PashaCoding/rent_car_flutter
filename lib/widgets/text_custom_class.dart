import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomTextClass {

  static Text customText(String yourText,
      int colorValue ,
      double yourFontSize,
      {FontWeight yourFontWeight=FontWeight.w400,
      String yourFontFamily="Roboto"}) =>
      Text(yourText,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color:Color(colorValue), fontSize:yourFontSize, fontWeight:yourFontWeight, fontFamily:yourFontFamily),);

}