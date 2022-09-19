import 'package:firebase_core/firebase_core.dart';
import 'package:first_project/views/Book%20Now/book_now.dart';
import 'package:first_project/views/Home/home_page.dart';
import 'package:first_project/views/OTPVerification/otp_verification.dart';
import 'package:first_project/views/SignIn/sign_in.dart';
import 'package:first_project/views/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
            body: SplashScreen()),
      ),
    );
  }
}
