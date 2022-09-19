import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/custom_icon.dart';
import '../../widgets/text_custom_class.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

bool changeColor = true;

class _ProductState extends State<Product> {
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
            size: 17,
          ),
        ),
        title: CustomTextClass.customText(
          "Rolce Royce",
          0xff000000,
          22.0.sp,
          yourFontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        actions: [
          const Icon(
            FontAwesomeIcons.user,
            size: 20,
            color: Color(0xff7F8492),
          ),
          SizedBox(
            width: 14.w,
          ),
          GestureDetector(
              onTap: () {
                if (changeColor == true) {
                  setState(() {
                    changeColor = false;
                  });
                } else {
                  setState(() {
                    changeColor = true;
                  });
                }
              },
              child: Icon(
                Icons.favorite,
                size: 24,
                color: changeColor == true
                    ? const Color(0xff7F8492)
                    : const Color(0xffFC5252),
              )),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 0,
                    child: Image.asset(
                      "assets/Images/carproduct.png",
                      height: 238.h,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextClass.customText("Rolce Royce", 0xff000000, 25.sp,
                          yourFontWeight: FontWeight.w700),
                      CustomTextClass.customText("\$20.00/hr", 0xffBC0420, 20.sp,
                          yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      CustomIconClass.customIcon(0xffF7B030, 11.sp),
                      CustomIconClass.customIcon(0xffF7B030, 11.sp),
                      CustomIconClass.customIcon(0xffF7B030, 11.sp),
                      CustomIconClass.customIcon(0xffF7B030, 11.sp),
                      CustomIconClass.customIcon(0xffC4C4C4, 11.sp),
                      SizedBox(
                        width: 4.w,
                      ),
                      CustomTextClass.customText("(4.5)", 0xff3C5FEA, 6.sp,
                          yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
                    ],
                  ),
                  CustomTextClass.customText("Location : New York", 0xff000000, 10.sp,
                      yourFontWeight: FontWeight.w500, yourFontFamily: "Roboto"),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText(
                    "Features",
                    0xffBC0420,
                    20.sp,
                    yourFontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 11.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextClass.customText("Model", 0xff000000, 20.sp,
                                  yourFontWeight: FontWeight.w700,
                                  yourFontFamily: "Roboto"),
                              CustomTextClass.customText("Phantom", 0xff000000, 20.sp,
                                  yourFontFamily: "Roboto"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextClass.customText("Brand", 0xff000000, 20.sp,
                                  yourFontWeight: FontWeight.w700,
                                  yourFontFamily: "Roboto"),
                              CustomTextClass.customText(
                                  "Rolce Royce", 0xff000000, 20.sp,
                                  yourFontFamily: "Roboto"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextClass.customText(
                                  "Sitting Capacity", 0xff000000, 20.sp,
                                  yourFontWeight: FontWeight.w700,
                                  yourFontFamily: "Roboto"),
                              CustomTextClass.customText(
                                  "5 seater", 0xff000000, 20.sp,
                                  yourFontFamily: "Roboto"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextClass.customText(
                                  "Gear Type", 0xff000000, 20.sp,
                                  yourFontWeight: FontWeight.w700,
                                  yourFontFamily: "Roboto"),
                              CustomTextClass.customText(
                                  "Automatic", 0xff000000, 20.sp,
                                  yourFontFamily: "Roboto"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextClass.customText(
                    "Description",
                    0xffBC0420,
                    20.sp,
                    yourFontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    " Pakistan is my Country" * 10,
                    style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              color: const Color(0xff272D37),
              child: Padding(
                padding: EdgeInsets.only(left:17.0.w,right: 17.h,bottom:33.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 13.0.h, bottom: 10.h),
                          child: RichText(
                              text: TextSpan(
                                  text: "Reviews ",
                                  style: TextStyle(
                                      color: const Color(0xffFFFFFF),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Roboto"),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "(64)",
                                      style: TextStyle(
                                          color: const Color(0xffFFFFFF),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Roboto"),
                                    ),
                                  ])),
                        ),
                        Row(children: [
                          CustomIconClass.customIcon(0xffF7B030, 11.sp),
                          CustomIconClass.customIcon(0xffF7B030, 11.sp),
                          CustomIconClass.customIcon(0xffF7B030, 11.sp),
                          CustomIconClass.customIcon(0xffF7B030, 11.sp),
                          CustomIconClass.customIcon(0xffF7B030, 11.sp),
                        ])
                      ],
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundImage:
                          AssetImage("assets/Images/description.png"),
                        ),
                        SizedBox(
                          width: 17.w,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Linda Lewis",
                                style: TextStyle(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "\n Nov 15, 2021",
                                    style: TextStyle(
                                        color: const Color(0xffFFFFFF),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ]))
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    CustomTextClass.customText(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utertid labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco aruun laboris nisi ut aliquip ex ea commodo consequat.",
                        0xffFFFFFF,
                        12.sp,
                        yourFontFamily: "Roboto")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
