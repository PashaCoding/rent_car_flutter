import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBC0420),
      body:Center(
        child: Image.asset("assets/Images/splashlogo.png",
        height: 129.h,
        width: 178.w,
        fit: BoxFit.fill,),
      ),
    );
  }
}
