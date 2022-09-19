import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/views/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_custom_class.dart';

class OtpVerification extends StatefulWidget {
  final String number;

  final String verification;

  const OtpVerification(
      {required this.number, required this.verification, Key? key})
      : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController passwoardkey1TextEditingController =
      TextEditingController();
  TextEditingController passwoardkey2TextEditingController =
      TextEditingController();
  TextEditingController passwoardkey3TextEditingController =
      TextEditingController();
  TextEditingController passwoardkey4TextEditingController =
      TextEditingController();
  TextEditingController passwoardkey5TextEditingController =
      TextEditingController();
  TextEditingController passwoardkey6TextEditingController =
      TextEditingController();

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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: CustomTextClass.customText(
            "OTP Verification", 0xffBC0420, 22.0.sp,
            yourFontWeight: FontWeight.w700, yourFontFamily: "Montserrat"),
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
                      widget.number.toString(), 0xffBC0420, 16.0.sp,
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
                  customContainer(
                      "0", context, passwoardkey1TextEditingController),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  customContainer(
                      "0", context, passwoardkey2TextEditingController),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  customContainer(
                      "0", context, passwoardkey3TextEditingController),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  customContainer(
                      "0", context, passwoardkey4TextEditingController),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  customContainer(
                      "0", context, passwoardkey5TextEditingController),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  customContainer(
                      "0", context, passwoardkey6TextEditingController),
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
            CustomButton.customGradientButton("Verify", () async {
              final key = PhoneAuthProvider.credential(
                  verificationId: widget.verification,
                  smsCode: passwoardkey1TextEditingController.text +
                      passwoardkey2TextEditingController.text +
                      passwoardkey3TextEditingController.text +
                      passwoardkey4TextEditingController.text +
                      passwoardkey5TextEditingController.text +
                      passwoardkey6TextEditingController.text);
              try {
                await _firebaseAuth.signInWithCredential(key);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (_) => false);
              } catch (e) {
                Fluttertoast.showToast(msg: e.toString());
              }
            }),
          ],
        ),
      ),
    );
  }

  Container customContainer(String text, BuildContext context,
          TextEditingController keyTextEditingController) =>
      Container(
        width: 40.w,
        height: 50.h,
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
        child: TextFormField(
          controller: keyTextEditingController,
          onChanged: (change) {
            if (change.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xff191A1C),
              fontSize: 25.0.sp,
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto"),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        // child: Center(
        //   child: CustomTextClass.customText(text, 0xff191A1C, 12.0.sp,
        //       yourFontWeight: FontWeight.w400, yourFontFamily: "Roboto"),
        // ),
      );
}
