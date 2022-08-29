import 'package:first_project/views/Categories/categories_page.dart';
import 'package:first_project/views/Drawer/navigater_drawer.dart';
import 'package:first_project/views/Filters/filter_page.dart';
import 'package:first_project/views/Language/language_choose_page.dart';
import 'package:first_project/views/OTPVerification/otp_verification.dart';
import 'package:first_project/views/SignIn/sign_in.dart';
import 'package:first_project/views/Splash/splash_screen.dart';
import 'package:first_project/views/SignUp/sign_up.dart';
import 'package:first_project/views/ViewCars/view_car.dart';
import 'package:first_project/views/WishList/wishlist_page.dart';
import 'package:first_project/views/forgot_password.dart';
import 'package:first_project/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414,896),
    builder: (context , child)=> const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xffFFFFFF),
            body: HomePage()),
      ),
    );
  }
}
