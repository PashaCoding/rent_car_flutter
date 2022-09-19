import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_button.dart';
import '../widgets/text_custom_class.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left_outlined,
            color: Color(0xff000000),
          ),
          onPressed: () {Navigator.pop(context);},
        ),
        title: Text(
          "Forgot Password",
          style: TextStyle(
              color: const Color(0xffBC0420),
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Montserrat-Black'),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextClass.customText(
                    'Please Enter Your Email So We Can Help You',
                    0xff7F8492,
                    10.sp,
                    yourFontFamily: 'Roboto'),
                CustomTextClass.customText(
                    'Recover Your Password', 0xff7F8492, 10.sp,
                    yourFontFamily: 'Roboto'),
              ],
            ),
            SizedBox(
              height: 131.h,
            ),
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
                  prefixIcon: const Icon(Icons.email_outlined),
                  prefixIconColor: const Color(0xffC4C4C4),
                  fillColor: const Color(0xffC4C4C4),
                  hintStyle: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffC4C4C4),
                  ),
                  hintText: 'Email address',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ),
            SizedBox(
              height: 78.h,
            ),
            CustomButton.customGradientButton("Done",(){}),
            SizedBox(
              height: 366.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextClass.customText(
                    'Donn’t have an account?', 0xff000000, 14.sp,
                    yourFontFamily: 'Roboto'),
                GestureDetector(
                  onTap: () {},
                  child: CustomTextClass.customText(
                      ' Create Now', 0xff30377E, 14.sp,
                      yourFontFamily: 'Roboto',
                      yourFontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
