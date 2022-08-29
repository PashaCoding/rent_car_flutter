import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/text_custom_class.dart';

class Categories extends StatefulWidget {
   const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List CategoriesNames = ["Cars", "Appartments", "Bikes", "Machines"];
  final List CategoriesImages = [
    'assets/Images/cars.png',
    'assets/Images/appartments.png',
    'assets/Images/bikes.png',
    'assets/Images/mechines.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xffC4C4C4),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  CustomTextClass.customText("Categories", 0xff000000, 36.sp,
                      yourFontWeight: FontWeight.w700, yourFontFamily: "Roboto"),
                  const Spacer(flex: 1,),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: const Color(0xff6E6E6E),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.widgets),
                    color: const Color(0xff6E6E6E),
                  )
                ],
              ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 45.h,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xffECECEC),
                          width: 1,
                        )),
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
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: CategoriesNames.length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 62.h,
                              width: 62.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    CategoriesImages[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            title: CustomTextClass.customText(
                              CategoriesNames[index],
                              0xff000000,
                              10.sp,
                              yourFontWeight: FontWeight.w500,
                            ),

                          ),
                          const Divider(),
                        ],
                      ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
