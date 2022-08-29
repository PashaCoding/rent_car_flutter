import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/appbar_custom_class.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_custom_class.dart';
import '../../widgets/text_form_filed.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppbar("Sign Up"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextClass.customText(
                  'Please enter your data to create an account',
                  0xff000000,
                  14.sp,
                  yourFontFamily: "Roboto"),
              SizedBox(
                height: 15.h,
              ),
              CustomTextClass.customText(
                  'Full Name',
                  0xff212121,
                  14.sp,
                  yourFontFamily: "Roboto"),
              SizedBox(
                height: 9.h,
              ),
              CustomTextFormFiledClass.CustomTextFormFiled('alexandra daddario', 51.h, 334.w),
              SizedBox(
                height: 15.h,
              ),
              CustomTextClass.customText(
                  'Email',
                  0xff212121,
                  14.sp,
                  yourFontFamily: "Roboto"),
              SizedBox(
                height: 9.h,
              ),
              CustomTextFormFiledClass.CustomTextFormFiled('Alexandradad@gmail.com', 51.h, 334.w),
              SizedBox(
                height: 9.h,
              ),
              CustomTextClass.customText(
                  'Select Your Country',
                  0xff212121,
                  14.sp,
                  yourFontFamily: "Roboto"),
              SizedBox(
                height: 9.h,
              ),
              Container(
                  height: 51.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xffC4C4C4),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [],
                  )),
              SizedBox(
                height: 9.h,
              ),
              CustomTextClass.customText(
                  'Password',
                  0xff212121,
                  14.sp,
                  yourFontFamily: "Roboto"),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                height: 51.h,
                width: 335.w,
                child: TextField(
                  obscureText: true,
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
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    fillColor: const Color(0xffC4C4C4),
                    hintStyle: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffC4C4C4),
                    ),
                    hintText: '***********************',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              CustomButton.customGradientButton("Sign up"),
              SizedBox(
                height: 183.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextClass.customText(
                      'Already have an account?',
                      0xff1B1C1E,
                      16.sp,
                      yourFontWeight:FontWeight.w700,
                      yourFontFamily: "Roboto"),
                  GestureDetector(
                    onTap: () {},
                    child: CustomTextClass.customText(
                        'Sign in',
                        0xffBC0420,
                        16.sp,
                        yourFontWeight:FontWeight.w700,
                        yourFontFamily: "Roboto"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
