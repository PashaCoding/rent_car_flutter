import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomTextFormFiledClass{
  static SizedBox CustomTextFormFiled(
      String yourHintText,
      double yourHeight,
      double yourWidth,
      TextEditingController yourControlar,
      )=>SizedBox(
    height:yourHeight,
    width: yourWidth,
    child: TextField(
      controller: yourControlar,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xffC4C4C4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        fillColor: const Color(0xffC4C4C4),
        hintStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          fontFamily: 'Arialn',
          color: const Color(0xffC4C4C4),
        ),
        hintText: yourHintText,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(10),
      ),
    ),
  );



}