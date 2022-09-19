import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Add Card"),
      body: Padding(
        padding: EdgeInsets.only(left:20.0.w,right: 20.0.w,),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            CustomTextClass.customText("Name on the Card", 0xff000000, 14.sp,
                yourFontFamily: "Roboto", yourFontWeight: FontWeight.w500),
            SizedBox(height: 13.h,),
            SizedBox(
              height: 39.h,
              width: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Color(0xffE5E5E5),
                        width: 1,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xffE5E5E5),
                      width: 1,
                    ),
                  ),
                  hintText: "Card Hold Name",
                  hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(12),
                ),
              ),

            ),
            SizedBox(height: 5.h,),
            CustomTextClass.customText("* Required", 0xffE32020, 10.sp,
                yourFontFamily: "Roboto",),
            SizedBox(height: 17.h,),
            CustomTextClass.customText("Card Number", 0xff000000, 14.sp,
                yourFontFamily: "Roboto", yourFontWeight: FontWeight.w500),
            SizedBox(height: 13.h,),
            SizedBox(
              height: 39.h,
              width: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: Color(0xffE5E5E5),
                        width: 1,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xffE5E5E5),
                      width: 1,
                    ),
                  ),
                  hintText: "4950 54XX XXXX XXXX",
                  hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(12),
                  suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/Images/visa.png",
                      fit: BoxFit.fill,),
                    ),
                  ),
                ),


            ),
            SizedBox(height: 5.h,),
            CustomTextClass.customText("* Required", 0xffE32020, 10.sp,
              yourFontFamily: "Roboto",),
          ],
        ),
      ),
    );
  }
}
