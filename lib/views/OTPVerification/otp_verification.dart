import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_custom_class.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

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
          onPressed: () {},
        ),
        title:CustomTextClass.customText(
            "OTP Verification", 0xffBC0420, 22.0.sp,
            yourFontWeight: FontWeight.w700,
            yourFontFamily: "Montserrat"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextClass.customText(
                    "Enter the OPT sent to", 0xff1B1C1E, 16.0.sp,
                    yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
                GestureDetector(
                  onTap: () {},
                  child: CustomTextClass.customText(
                      "+1 111 222 3333", 0xffBC0420, 16.0.sp,
                      yourFontWeight: FontWeight.w700,
                      yourFontFamily: "Roboto"),
                ),
              ],
            ),
            SizedBox(
              height: 110.h,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customContainer("1"),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  customContainer("3"),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  customContainer("7"),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  customContainer("3"),
                ],
              ),
            ),
            SizedBox(
              height: 145.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextClass.customText(
                    "Didn’t receive code?", 0xff000000, 16.0.sp,
                    yourFontFamily: "Roboto"),
                GestureDetector(
                  onTap: () {},
                  child: CustomTextClass.customText(
                      "Resend OPT", 0xff000000, 16.0.sp,
                      yourFontWeight: FontWeight.w700,
                      yourFontFamily: "Roboto"),
                ),
              ],
            ),
            SizedBox(
              height: 45.h,
            ),
            CustomButton.customGradientButton("Send OTP"),
          ],
        ),
      ),
    );
  }

  Container customContainer(String text) => Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffD4D4D4),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              blurStyle: BlurStyle.solid,
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),
        child: Center(
          child: CustomTextClass.customText(text, 0xff191A1C, 12.0.sp,
              yourFontWeight: FontWeight.w400, yourFontFamily: "Roboto"),
        ),
      );
}
