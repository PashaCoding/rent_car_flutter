import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);
  @override
  State<Filter> createState() => _FilterState();
}
class _FilterState extends State<Filter> {
  double value=1;
  String newchangevalue="";
  String newchangevalueBrand="Honda";
  String newchangevalueCity="Lahore";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Filter"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextClass.customText('Category', 0xff000000, 18.sp,
                      yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
                  CustomTextClass.customText('Clear All', 0xffBC0420, 12.sp,
                      yourFontWeight: FontWeight.w500, yourFontFamily: "Roboto"),
                ],
        ),
                  SizedBox(height: 15.h,),
                  SizedBox(
                    height: 33.h,
                    width: 225.w,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),

                        ),
                        contentPadding: const EdgeInsets.all(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: newchangevalue,
                            iconSize: 9,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color:const Color(0xff000000),
                            ),
                            isExpanded: true,
                            isDense: true,
                            menuMaxHeight: 200.h,
                            onChanged: (newValue) {
                              setState(() {
                                newchangevalue=newValue.toString();
                              });
                            },
                            items:[
                              const DropdownMenuItem<String>(
                                value: "",
                                child:Text("Choose Category"),
                              ),
                              ...<String>[
                                "Muzamil",
                                "Hussain",
                                "Mudasser",
                                "Others"
                              ].map<DropdownMenuItem<String>>((String e){
                                return DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),);}).toList(),
                            ]
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextClass.customText('Brand', 0xff000000, 18.sp,
                  yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
                  SizedBox(height: 15.h,),
                  SizedBox(
                    height: 33.h,
                    width: 225.w,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),

                        ),
                        contentPadding: const EdgeInsets.all(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: newchangevalueBrand,
                            iconSize: 9,
                            style: TextStyle(
                              color:const Color(0xff000000),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            isExpanded: true,
                            isDense: true,
                            menuMaxHeight: 200.h,
                            onChanged: (newValue) {
                              setState(() {
                                newchangevalueBrand=newValue.toString();
                              });
                            },
                            items:<String>[
                                "Honda",
                                "Suzuki",
                              ].map<DropdownMenuItem<String>>((String e){
                                return DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),);}).toList(),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextClass.customText('City', 0xff000000, 18.sp,
                    yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
                  SizedBox(height: 15.h,),

                  SizedBox(
                    height: 33.h,
                    width: 225.w,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),

                        ),
                        contentPadding: const EdgeInsets.all(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: newchangevalueCity,
                          iconSize: 9,
                          style: TextStyle(
                            color:const Color(0xff000000),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          isExpanded: true,
                          isDense: true,
                          menuMaxHeight: 200.h,
                          onChanged: (newValue) {
                            setState(() {
                              newchangevalueCity=newValue.toString();
                            });
                          },
                          items:<String>[
                            "Lahore",
                            "Multan",
                          ].map<DropdownMenuItem<String>>((String e){
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),);}).toList(),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  CustomTextClass.customText('Price', 0xff000000, 18.sp,
                    yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
              ],
            ),
          ),
            SizedBox(height: 15.h,),
            SizedBox(
              width: double.infinity,
              child: SizedBox(
                width: double.maxFinite,
                child: Slider(
                    activeColor: const Color(0xffBC0420),
                    value: value,
                    min: 1,
                    max: 100,
                    divisions: 100,
                    onChanged: (double changeValue) {
                      setState(() {
                        value = changeValue.round().toDouble();
                      });
                    }),
              ),
            ),

            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextClass.customText('\$$value', 0xff000000, 12.sp,
                yourFontWeight: FontWeight.w500, yourFontFamily: "Roboto"),
            ),
          ],
        ),
      ),
    );
  }
}
