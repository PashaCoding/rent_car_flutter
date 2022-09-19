import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/views/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Language/language_choose_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth auth=FirebaseAuth.instance;
    final user =auth.currentUser;
    if(user!=null) {
  Timer(
      const Duration(seconds: 3),
          () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => const HomePage()),
            (_)=>false);
      });
}
else
  {
    Timer(
        const Duration(seconds: 3),
            () {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) => const LanguageChoose()),
                  (_)=>false);
        });

  }
  }
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
