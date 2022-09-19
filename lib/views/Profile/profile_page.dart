import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/text_custom_class.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff000000),
          ),
        ),
        title: CustomTextClass.customText("Profile", 0xff000000, 20.sp,
            yourFontWeight: FontWeight.w700),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: CustomTextClass.customText("Edit", 0xff2E97B2, 15.sp,
                yourFontWeight: FontWeight.w700),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 186.h,
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/Images/profile.png"),
                            )),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextClass.customText(
                          "Peter Morgan", 0xff000000, 16.sp,
                          yourFontWeight: FontWeight.w700),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.phone_android_sharp),
              title: CustomTextClass.customText(
                "+1 123 123 1234",
                0xff868686,
                14.sp,
                yourFontFamily: "Roboto",
              ),
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: CustomTextClass.customText(
                "jaylonherwitz12@gmail.com",
                0xff868686,
                14.sp,
                yourFontFamily: "Roboto",
              ),
            ),
            ListTile(
              leading: const Icon(Icons.manage_accounts_rounded),
              title: CustomTextClass.customText(
                "000 0000 0000 0000",
                0xff868686,
                14.sp,
                yourFontFamily: "Roboto",
              ),
            ),
            ListTile(
              leading: const Icon(Icons.route_rounded),
              title: CustomTextClass.customText(
                "Routing",
                0xff868686,
                14.sp,
                yourFontFamily: "Roboto",
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: CustomTextClass.customText(
                "RM6 NL, PO 2452, Maldives",
                0xff868686,
                14.sp,
                yourFontFamily: "Roboto",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
