import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/appbar_custom_class.dart';
import '../../widgets/custom_icon.dart';
import '../../widgets/text_custom_class.dart';

class ViewCar extends StatelessWidget {
  const ViewCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Cars"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xffECECEC),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
              hintText: "Search here ",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Arialn',
                color: const Color(0xff8E9298),
              ),
              prefixIcon: const Icon(
                Icons.search,
                size: 20,
                color: Color(0xff8E9298),
              ),
              suffixIcon: const Icon(
                Icons.select_all_rounded,
                size: 20,
                color: Color(0xff8E9298),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(10),
            )),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) => Card(
                        elevation: 7,
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/Images/cartoprated.png",
                              height: 130.h,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomTextClass.customText(
                                        "Toyota Allion",
                                        0xff000000,
                                        15.sp,
                                        yourFontWeight: FontWeight.w700,
                                      ),
                                      CustomTextClass.customText(
                                        "\$1700/Day",
                                        0xff000000,
                                        13.sp,
                                        yourFontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    children: [
                                      CustomTextClass.customText(
                                          "Automatic", 0xff000000, 15.sp,
                                          yourFontWeight: FontWeight.w400,
                                          yourFontFamily: "Arial"),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      CustomIconClass.customIcon(0xffFF7E00,9.0),
                                      CustomIconClass.customIcon(0xffFF7E00,9.0),
                                      CustomIconClass.customIcon(0xffFF7E00,9.0),
                                      CustomIconClass.customIcon(0xffFF7E00,9.0),
                                      CustomIconClass.customIcon(0xffFF7E00,9.0),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      CustomTextClass.customText(
                                          "5.0", 0xff000000, 8.sp,
                                          yourFontWeight: FontWeight.w500,
                                          yourFontFamily: "Roboto"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 34.h,
                                        width: 160.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: const Color(0xffBC0420),
                                        ),
                                        child: Center(
                                          child: CustomTextClass.customText(
                                            "View Detail",
                                            0xffFFFFFF,
                                            10.sp,
                                            yourFontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 34.h,
                                        width: 160.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              width: 1,
                                              color: const Color(0xff30327B),
                                            )),
                                        child: Center(
                                          child: CustomTextClass.customText(
                                            "Reserve Now",
                                            0xff000000,
                                            10.sp,
                                            yourFontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
