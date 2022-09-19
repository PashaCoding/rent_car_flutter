import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Account"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            Padding(
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
                    height: 24.h,
                  ),
                  CustomTextClass.customText(
                      "Peter Morgan", 0xff000000, 16.sp,
                      yourFontWeight: FontWeight.w700),
                ],
              ),
            ),
            SizedBox(height: 40.h,),
            Card(
              elevation: 5,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 38.0.w, vertical: 28.h),
                child: Column(
                  children: [
                    customColumnView("Account", Icons.manage_accounts_rounded),
                    customColumnView("My Product", Icons.payment_rounded),
                    customColumnView("Notification", Icons.notifications),
                    customColumnView("Add Card", Icons.add_card),
                    customColumnView("Booking", Icons.border_color_outlined),
                    customColumnView("Languages", Icons.language),
                    customColumnView(
                        "Privacy Policy", Icons.privacy_tip_outlined),
                Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.share,
                            color: Color(0xff000000),
                            size: 16.0,
                          ),
                          const VerticalDivider(color: Color(0xff000000),),
                          CustomTextClass.customText("Share App", 0xff1B1C1E, 16.sp,
                              yourFontWeight: FontWeight.w500, yourFontFamily: "Roboto"),
                        ],
                      ),

                    ),
                    SizedBox(height: 10.h,)
                  ],
                ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column customColumnView(String yourText, IconData data) => Column(
        children: [
          SizedBox(
            height: 20.h,
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  data,
                  color: const Color(0xff000000),
                  size: 16.0,
                ),
                const VerticalDivider(
                  color: Color(0xff000000),
                ),
                CustomTextClass.customText(yourText, 0xff1B1C1E, 16.sp,
                    yourFontWeight: FontWeight.w500, yourFontFamily: "Roboto"),
                const Spacer(
                  flex: 1,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xff000000),
                  size: 16.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          const Divider(),
        ],
      );
}
