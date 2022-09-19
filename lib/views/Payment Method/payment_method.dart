import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/custom_button.dart';
import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Add Payment Method"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          children: [
            SizedBox(height: 55.h,),
            Container(
              height: 66.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(117),
                color: const Color(0xffF0F0F0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0,left:47),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 3.h,),
                        Image.asset("assets/Images/stripe.png",
                        height: 22.h,
                        width: 23.16.w,
                        fit: BoxFit.fill,),
                      ],
                    ),
                    SizedBox(width: 9.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextClass.customText("Stripe", 0xff000000, 16.sp,
                            yourFontFamily: "Arial"),
                        SizedBox(height:3.h,),
                        CustomTextClass.customText(
                            "Faster and easier way to send money",
                            0xff7F8492,
                            12.0.sp,
                            yourFontFamily: "Arial"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h,),
            Container(
              height: 66.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(117),
                color: const Color(0xffF0F0F0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0,left:47),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 3.h,),
                        Image.asset("assets/Images/creditcard.png",
                          height: 22.h,
                          width: 23.16.w,
                          fit: BoxFit.fill,),
                      ],
                    ),
                    SizedBox(width: 9.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextClass.customText("Credit card", 0xff000000, 16.sp,
                            yourFontFamily: "Arial"),
                        SizedBox(height:3.h,),
                        CustomTextClass.customText(
                            "Pay with credit card and visa",
                            0xff7F8492,
                            12.0.sp,
                            yourFontFamily: "Arial"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 298.h,),
            CustomButton.customGradientButton("Add Card",(){}),
          ],
        ),
      ),
    );
  }
}
