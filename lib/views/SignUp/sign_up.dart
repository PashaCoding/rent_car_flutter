import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/views/Home/home_page.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../widgets/appbar_custom_class.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_custom_class.dart';
import '../../widgets/text_form_filed.dart';
import '../SignIn/sign_in.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  bool loader = false;
  final countryPicker = FlCountryCodePicker();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  CountryCode? flagAndName;
  bool show = true;
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  userRegister() async {
    try {
      setState(() {
        loader = true;
      });
      final user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailTextEditingController.text,
          password: passwordTextEditingController.text);
      if (user != null) {
        loader = false;
        Fluttertoast.showToast(
            msg: "Register successfully",
            backgroundColor: const Color(0xffBC0420),
            textColor: const Color(0xffFFFFFF));
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomePage();
        }));
      }
    } catch (e) {
      loader = false;
      Fluttertoast.showToast(
          msg: e.toString(),
          backgroundColor: const Color(0xffBC0420),
          textColor: const Color(0xffFFFFFF));
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: loader,
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: CustomAppbarClass.customAppbar("Sign Up", () {
          Navigator.pop(context);
        }),
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
                CustomTextClass.customText('Full Name', 0xff212121, 14.sp,
                    yourFontFamily: "Roboto"),
                SizedBox(
                  height: 9.h,
                ),
                CustomTextFormFiledClass.CustomTextFormFiled(
                    'alexandra daddario',
                    51.h,
                    334.w,
                    nameTextEditingController),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextClass.customText('Email', 0xff212121, 14.sp,
                    yourFontFamily: "Roboto"),
                SizedBox(
                  height: 9.h,
                ),
                SizedBox(
                  height: 51.h,
                  width: 334.w,
                  child: TextField(
                    controller: emailTextEditingController,
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
                      hintText: 'Alexandradad@gmail.com',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(10),
                    ),
                  ),
                ),

                // CustomTextFormFiledClass.CustomTextFormFiled(
                //       'Alexandradad@gmail.com', 51.h, 334.w,emailTextEditingController),
                SizedBox(
                  height: 9.h,
                ),
                CustomTextClass.customText(
                    'Select Your Country', 0xff212121, 14.sp,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 12.h,
                            width: 18.w,
                            child: flagAndName != null
                                ? flagAndName!.flagImage
                                : null,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomTextClass.customText(
                              flagAndName != null
                                  ? flagAndName!.name.toString()
                                  : "Pick up Country",
                              0xffC4C4C4,
                              12.sp),
                          const Spacer(
                            flex: 1,
                          ),
                          GestureDetector(
                            onTap: () async {
                              final code = await countryPicker.showPicker(
                                  context: context);
                              setState(() {
                                flagAndName = code;
                              });
                            },
                            child: const Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 9.h,
                ),
                CustomTextClass.customText('Password', 0xff212121, 14.sp,
                    yourFontFamily: "Roboto"),
                SizedBox(
                  height: 9.h,
                ),
                SizedBox(
                  height: 51.h,
                  width: 335.w,
                  child: TextField(
                    controller: passwordTextEditingController,
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
                      suffixIcon: GestureDetector(
                          onTap: () {
                            if (show == true) {
                              setState(() {
                                show = false;
                              });
                            } else {
                              setState(() {
                                show = true;
                              });
                            }
                          },
                          child: const Icon(Icons.remove_red_eye_outlined)),
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
                    obscureText: show,
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                CustomButton.customGradientButton("Sign up", () {
                  userRegister();
                }),
                SizedBox(
                  height: 183.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextClass.customText(
                        'Already have an account?', 0xff1B1C1E, 16.sp,
                        yourFontWeight: FontWeight.w700,
                        yourFontFamily: "Roboto"),
                    GestureDetector(
                      onTap: () {},
                      child: CustomTextClass.customText(
                          'Sign in', 0xffBC0420, 16.sp,
                          yourFontWeight: FontWeight.w700,
                          yourFontFamily: "Roboto"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
