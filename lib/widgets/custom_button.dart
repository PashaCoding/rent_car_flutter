import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton {
  static Container customGradientButton(String yourText,VoidCallback callback) {
    return Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffF4E478),
                Color(0xffBC0420),
              ]),
        ),
      child: MaterialButton(
        onPressed:callback,
        child: Center(
          child: Text(
            yourText,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Roboto',
              color: const Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
    // return Container(
    //   height: 45.h,
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(5),
    //     gradient: const LinearGradient(
    //         begin: Alignment.centerLeft,
    //         end: Alignment.centerRight,
    //         colors: [
    //           Color(0xffF4E478),
    //           Color(0xffBC0420),
    //         ]),
    //   ),
    //   child: Center(
    //     child: Text(
    //       yourText,
    //       style: TextStyle(
    //         fontSize: 20.sp,
    //         fontWeight: FontWeight.w700,
    //         fontFamily: 'Roboto',
    //         color: const Color(0xffFFFFFF),
    //       ),
    //     ),
    //   ),
    // );
  }
}
