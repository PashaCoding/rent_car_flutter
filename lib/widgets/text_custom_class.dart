import 'package:flutter/material.dart';
class CustomTextClass {

  static Text customText(String yourText,
      int colorValue ,
      double yourFontSize,
      {FontWeight yourFontWeight=FontWeight.w400,
      String yourFontFamily="Montserrat"}) =>
      Text(yourText,
        style: TextStyle(color:Color(colorValue), fontSize:yourFontSize, fontWeight:yourFontWeight, fontFamily:yourFontFamily),);

}