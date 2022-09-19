import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/book_now.dart';
import 'package:first_project/widgets/custom_button.dart';
import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookNow extends StatelessWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Book Now"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookNowCustom(
                      vehicleName: "Rolce Royce Rolce Royce Rolce Royce Rolce Royce Rolce Royce",
                      cityName: "New york",
                      price: "20.00",
                      rating: "4.5")
                  .bookNowF(),
              SizedBox(
                height: 30.h,
              ),
              const Divider(
                color: Color(0xffC4C4C4),
              ),
              ListTile(
                leading: const Icon(
                  Icons.add_card,
                  color: Color(0xffFF9900),
                ),
                title: CustomTextClass.customText(
                    "Add Promo Code", 0xff000000, 18.sp,
                    yourFontFamily: "Roboto"),
                trailing: InkWell(
                  onTap: (){},
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              const Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextClass.customText("Rate/hr", 0xff000000, 18.sp,
                          yourFontFamily: "Roboto"),
                      SizedBox(
                        height: 19.h,
                      ),
                      CustomTextClass.customText("Total hours", 0xff000000, 18.sp,
                          yourFontFamily: "Roboto"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextClass.customText("\$50.00", 0xff000000, 18.sp,
                          yourFontFamily: "Roboto",
                          yourFontWeight: FontWeight.w700),
                      SizedBox(
                        height: 19.h,
                      ),
                      CustomTextClass.customText("10.00", 0xff000000, 18.sp,
                          yourFontFamily: "Roboto",
                          yourFontWeight: FontWeight.w700),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextClass.customText("Total", 0xff000000, 30.sp,
                      yourFontFamily: "Roboto", yourFontWeight: FontWeight.w400),
                  SizedBox(
                    height: 19.h,
                  ),
                  CustomTextClass.customText("\$500.00", 0xffBC0420, 30.sp,
                      yourFontFamily: "Roboto", yourFontWeight: FontWeight.w400),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color: Color(0xffC4C4C4),
              ),
              SizedBox(
                height: 43.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/Images/googlemap.png",
                    height: 67,
                    width: 67,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextClass.customText(
                                "Pick Up Point ", 0xff000000, 18.sp,
                                yourFontFamily: "Roboto",
                                yourFontWeight: FontWeight.w700),
                            InkWell(
                              onTap: (){},
                              child: CustomTextClass.customText(
                                "Change",
                                0xffBC0420,
                                18.sp,
                                yourFontFamily: "Roboto",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 11.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Color(0xffC4C4C4),
                            ),
                            CustomTextClass.customText(
                              "House town New York",
                              0xffC4C4C4,
                              18.sp,
                              yourFontFamily: "Roboto",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h,),
              CustomButton.customGradientButton("Continue",(){}),
            ],
          ),
        ),
      ),
    );
  }
}
