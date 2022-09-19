import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_custom_class.dart';
import 'package:first_project/views/SignIn/sign_in.dart';

class LanguageChoose extends StatefulWidget {
  const LanguageChoose({Key? key}) : super(key: key);

  @override
  State<LanguageChoose> createState() => _LanguageChooseState();
}

class _LanguageChooseState extends State<LanguageChoose> {
  var value2 = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffFFFFFF),
          actions: [
            TextButton(
              onPressed: () {},
              child: CustomTextClass.customText(
                "Skip",
                0xffBC0420,
                16.0.sp,
                yourFontWeight: FontWeight.w700,
              ),
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            CustomTextClass.customText(
              "Choose the Language",
              0xff000000,
              20.0.sp,
              yourFontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 66.h,
            ),
            Row(
              children: [
                Radio(
                    focusColor: Colors.cyan,
                    value: '1',
                    groupValue: value2,
                    onChanged: (value) {
                      setState(() {
                        value2 = value.toString();
                      });
                    }),
                SizedBox(
                  width: 40.w,
                ),
                Image.asset(
                  'assets/Images/english.png',
                  height: 30.h,
                  width: 40.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomTextClass.customText("English", 0xff000000, 20.0.sp,
                    yourFontFamily: "Roboto"),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Row(
              children: [
                Radio(
                    value: '2',
                    groupValue: value2,
                    onChanged: (value) {
                      setState(() {
                        value2 = value.toString();
                      });
                    }),
                SizedBox(
                  width: 40.w,
                ),
                Image.asset(
                  'assets/Images/spanish.png',
                  height: 30.0.h,
                  width: 40.0.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 10.w,
                ),
                CustomTextClass.customText("Spanish", 0xff000000, 20.0.sp,
                    yourFontFamily: "Roboto"),
              ],
            ),
            SizedBox(
              height: 71.h,
            ),
            CustomButton.customGradientButton(
                "Keep Going",
                () => Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>const SignIn()))),
          ],
        ),
      ),
    );
  }
}
