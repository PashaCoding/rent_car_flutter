import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/appbar_custom_class.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_custom_class.dart';
import '../../widgets/text_form_filed.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppbar("Sign In"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 40.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              CustomTextClass.customText('Welcome to', 0xff000000, 26.sp,
                  yourFontWeight: FontWeight.w700),
              CustomTextClass.customText(
                  'Enter your registered phone', 0xff000000, 16.sp,
                  yourFontFamily: "Arialn"),
              CustomTextClass.customText('number to log in', 0xff000000, 16.sp,
                  yourFontFamily: "Arialn"),
              SizedBox(
                height: 15.h,
              ),
              CustomTextClass.customText('Phone Number', 0xffC4C4C4, 16.sp,
                  yourFontFamily: "Arialn"),
              Row(
                children: [
                  Container(
                    height: 51.h,
                    width: 99.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xffC4C4C4),
                        width: 1,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  CustomTextFormFiledClass.CustomTextFormFiled(
                      '(525)333-1254', 51.h, 229.w),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(child: CustomButton.customGradientButton("Send OTP")),
              SizedBox(
                height: 27.h,
              ),
              Center(
                child: Column(
                  children: [
                    CustomTextClass.customText(
                        'Enter your registered email', 0xff000000, 14.sp,
                        yourFontFamily: "Arialn"),
                    CustomTextClass.customText(
                        'address to log in.', 0xff000000, 14.sp,
                        yourFontFamily: "Arialn"),
                  ],
                ),
              ),
              CustomTextClass.customText('Email', 0xff212121, 14.sp,
                  yourFontFamily: "Arialn"),
              CustomTextFormFiledClass.CustomTextFormFiled(
                  'Example@gmail.com', 51.h, 334.w),
              SizedBox(
                height: 10.h,
              ),
              CustomTextClass.customText('Password', 0xff212121, 14.sp,
                  yourFontFamily: "Arialn"),
              SizedBox(
                height: 51.h,
                width: 335.w,
                child: TextField(
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
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    hintText: '***********************',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextClass.customText(
                      'Forgot password?', 0xff212121, 14.sp,
                      yourFontFamily: "Arialn"),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              Center(child: CustomButton.customGradientButton("Sign In")),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextClass.customText(
                      'Don’t have an account?', 0xff000000, 14.sp,
                      yourFontFamily: "Arialn"),
                  CustomTextClass.customText('Signup', 0xffBC0420, 14.sp,
                      yourFontFamily: "Arialn"),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 1.h,
                      width: 115.w,
                      color: const Color(0xff4B5F61),
                    ),
                    CustomTextClass.customText(
                        'or sign in with', 0xff4B5F61, 14.sp,
                        yourFontFamily: "Arialn"),
                    Container(
                      height: 1.h,
                      width: 115.w,
                      color: const Color(0xff4B5F61),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  funcationImage("assets/Images/f.png"),
                  SizedBox(
                    width: 20.w,
                  ),
                  funcationImage("assets/Images/g.png"),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              Center(
                child: Column(
                  children: [
                    CustomTextClass.customText(
                        'By creating an account, you are agreeing to our',
                        0xff000000,
                        14.sp,
                        yourFontFamily: "Roboto",
                        yourFontWeight: FontWeight.w500),
                    CustomTextClass.customText(
                        'Terms of Service',
                        0xffBC0420,
                        14.sp,
                        yourFontWeight: FontWeight.w500),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Container funcationImage(String imageURL) => Container(
        height: 61.h,
        width: 61.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 1,
            color: const Color(0xffA8C1C3),
          ),
        ),
        child: Center(
          child: Image.asset(
            imageURL,
            height: 30.h,
            width: 30.w,
            fit: BoxFit.fill,
          ),
        ),
      );
}
