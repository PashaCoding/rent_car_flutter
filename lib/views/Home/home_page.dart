import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/custom_icon.dart';
import '../../widgets/text_custom_class.dart';
import '../Categories/categories_page.dart';
import '../Drawer/navigater_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  final imagesCar = [
    "assets/Images/car.png",
    "assets/Images/car.png",
    "assets/Images/car.png",
    "assets/Images/car.png",
  ];
  final List CategoriesNames = [
    "Cars is my life and pakistan",
    "Appartments",
    "Bikes",
    "Machines"
  ];
  final List CategoriesImages = [
    'assets/Images/cars.png',
    'assets/Images/appartments.png',
    'assets/Images/bikes.png',
    'assets/Images/mechines.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerNavigation(),
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xffFFFFFF),
          title: CustomTextClass.customText('Jaylon Herwitz', 0xff000000, 15.sp,
              yourFontWeight: FontWeight.w700),
          leading: Container(
            margin: EdgeInsets.all(12),
            child: CircleAvatar(
              child: Image.asset("assets/Images/profile.png",
                height: 45.h,
                width: 45.w,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Stack(
                  children: const [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xff1B2023),
                    ),
                    Positioned(
                        top: 4,
                        left: 12,
                        child: Icon(
                          Icons.brightness_1,
                          color: Color(0xffBC0420),
                          size: 9,
                        ))
                  ],
                )),
          ],
        ),
        floatingActionButton: SingleChildScrollView(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xffF4E478),
            child: const Icon(Icons.add),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: SingleChildScrollView(
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Container(
              color: const Color(0xffBC0420),
              height: 82.8.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.home,
                          color: Color(0xffFFFFFF),
                        ),
                        CustomTextClass.customText("Home", 0xffFFFFFF, 8.sp,
                            yourFontWeight: FontWeight.w500,
                            yourFontFamily: "Roboto"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.book,
                          color: Color(0xffFFFFFF),
                        ),
                        CustomTextClass.customText("Booking", 0xffFFFFFF, 8.sp,
                            yourFontWeight: FontWeight.w500,
                            yourFontFamily: "Roboto"),
                      ],
                    ),
                    const SizedBox.shrink(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.message_sharp,
                          color: Color(0xffFFFFFF),
                        ),
                        CustomTextClass.customText("Message", 0xffFFFFFF, 8.sp,
                            yourFontWeight: FontWeight.w500,
                            yourFontFamily: "Roboto"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.dashboard_rounded,
                          color: Color(0xffFFFFFF),
                        ),
                        CustomTextClass.customText("Account", 0xffFFFFFF, 8.sp,
                            yourFontWeight: FontWeight.w500,
                            yourFontFamily: "Roboto"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Builder(builder: (context) =>
                          InkWell(
                            onTap: () => Scaffold.of(context).openDrawer(),
                            child: Container(
                              height: 45.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: const Color(0xffECECEC),
                                  width: 1,
                                ),
                              ),
                              child: const Icon(Icons.menu),
                            ),
                          ),

                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      SizedBox(
                        height: 45.h,
                        width: 315.w,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Color(0xffECECEC),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor: const Color(0xff8E9298),
                            suffixIcon: const Icon(Icons.segment_rounded),
                            suffixIconColor: const Color(0xff8E9298),
                            fillColor: const Color(0xffC4C4C4),
                            hintStyle: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Arialn',
                              color: const Color(0xffC4C4C4),
                            ),
                            hintText: 'alexandra daddario',
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 190,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index)),
                    itemCount: imagesCar.length,
                    itemBuilder: (context, index, realIndex) {
                      final imagesCars = imagesCar[index];
                      return buildImage(imagesCars, index);
                    },
                  ),
                  SizedBox(
                    height: 10.34.h,
                  ),
                  Center(child: buildDotIndicater()),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextClass.customText(
                        "Categories",
                        0xff000000,
                        18.sp,
                        yourFontWeight: FontWeight.w700,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: GestureDetector(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (
                                  BuildContext context) => const Categories())),
                          child: Text(
                            "See All",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14.sp,
                              color: const Color(0xffBC0420),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: CategoriesNames.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
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
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  SizedBox(
                                    width: 70.w,
                                    child: Center(
                                      child: CustomTextClass.customText(
                                        CategoriesNames[index],
                                        0xff000000,
                                        10.sp,
                                        yourFontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextClass.customText(
                    "Top Featured",
                    0xff000000,
                    18.sp,
                    yourFontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 250.h,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) =>
                            Card(
                              elevation: 10,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/Images/cartoprated.png",
                                    height: 130.h,
                                    width: 328.w,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 328.w,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0.h, left: 10.w, right: 10.w),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 200.w,
                                                child: CustomTextClass
                                                    .customText(
                                                  "Toyota Allion",
                                                  0xff000000,
                                                  15.sp,
                                                  yourFontWeight: FontWeight
                                                      .w700,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100.w,
                                                child: Align(
                                                  alignment: Alignment
                                                      .bottomRight,
                                                  child: CustomTextClass
                                                      .customText(
                                                    "\$1700/Day",
                                                    0xff000000,
                                                    13.sp,
                                                    yourFontWeight: FontWeight
                                                        .w700,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          CustomTextClass.customText(
                                              "Automatic", 0xff000000, 13.sp,
                                              yourFontWeight: FontWeight.w400,
                                              yourFontFamily: "Arial"),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 30.h,
                                                width: 140.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(5),
                                                  color: const Color(
                                                      0xffBC0420),
                                                ),
                                                child: Center(
                                                  child: CustomTextClass
                                                      .customText(
                                                    "View Detail",
                                                    0xffFFFFFF,
                                                    10.sp,
                                                    yourFontWeight: FontWeight
                                                        .w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 30.h,
                                                width: 140.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(5),
                                                    border: Border.all(
                                                      width: 1,
                                                      color:
                                                      const Color(0xff30327B),
                                                    )),
                                                child: Center(
                                                  child: CustomTextClass
                                                      .customText(
                                                    "Reserve Now",
                                                    0xff000000,
                                                    10.sp,
                                                    yourFontWeight: FontWeight
                                                        .w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextClass.customText(
                    "Products Near By",
                    0xff000000,
                    18.sp,
                    yourFontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 235.h,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            Card(
                              elevation: 10,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 211.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      "assets/Images/carproduct.png",
                                      height: 168.h,
                                      width: 211.w,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Positioned(
                                    top: 156.h,
                                    child: Container(
                                      width: 211.w,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)),
                                        color: Color(0xffFFFFFF),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 2.0,
                                            left: 8.0, right: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .end,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: 100.w,
                                                  child: CustomTextClass
                                                      .customText(
                                                      "Rolce Royce", 0xff30327B,
                                                      18.sp,
                                                      yourFontWeight: FontWeight
                                                          .w700),
                                                ),
                                                SizedBox(
                                                  width: 70.w,
                                                  child: Align(
                                                    alignment: Alignment
                                                        .centerRight,
                                                    child: CustomTextClass
                                                        .customText(
                                                        "\$20.00/hr",
                                                        0xff000000, 10.sp,
                                                        yourFontWeight: FontWeight
                                                            .w700,
                                                        yourFontFamily: "Roboto"),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10.h,),
                                            Row(
                                              children: [
                                                CustomIconClass.customIcon(
                                                    0xffFF7E00, 9.0),
                                                CustomIconClass.customIcon(
                                                    0xffFF7E00, 9.0),
                                                CustomIconClass.customIcon(
                                                    0xffFF7E00, 9.0),
                                                CustomIconClass.customIcon(
                                                    0xffFF7E00, 9.0),
                                                CustomIconClass.customIcon(
                                                    0xffFF7E00, 9.0),

                                                SizedBox(width: 9.4.w,),
                                                CustomTextClass.customText(
                                                    "5.0", 0xff000000, 8.sp,
                                                    yourFontWeight: FontWeight
                                                        .w500,
                                                    yourFontFamily: "Roboto"),
                                                const Spacer(flex: 2,),
                                                Container(
                                                  height: 24.h,
                                                  width: 64.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(5),
                                                    color: const Color(
                                                        0xffBC0420),

                                                  ),
                                                  child: Center(
                                                    child: CustomTextClass
                                                        .customText(
                                                        "View", 0xff000000,
                                                        10.sp,
                                                        yourFontFamily: "Roboto"),
                                                  ),
                                                )

                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
          ]),
        ));
  }

  Widget buildImage(String url, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      height: 88.8.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            url,
          ),
        ),
      ),
    );
  }

  Widget buildDotIndicater() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imagesCar.length,
      effect: ExpandingDotsEffect(
        activeDotColor: const Color(0xffBC0420),
        dotWidth: 10.w,
        dotHeight: 6.h,
      ),
    );
  }
}
