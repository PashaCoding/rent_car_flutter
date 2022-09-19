import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/appbar_custom_class.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/text_custom_class.dart';

class AddProductApartment extends StatefulWidget {
  const AddProductApartment({Key? key}) : super(key: key);

  @override
  State<AddProductApartment> createState() => _AddProductApartmentState();
}
final ImagePicker _imagePicker = ImagePicker();
XFile? _image;
double value = 6;
int select=1;
class _AddProductApartmentState extends State<AddProductApartment> {
  String newchangevalue = "";
  final List CategoriesImages = [
    'assets/Images/cars.png',
    'assets/Images/appartments.png',
    'assets/Images/bikes.png',
    'assets/Images/mechines.png'
  ];
  final List CategoriesNames = ["Cars", "Appartments", "Bikes", "Machines"];
  Future fromGallery() async {
    final data = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (data != null) {
        _image = XFile(data.path);
      } else {
        print("No Image");
      }
    });
  }

  Future fromCamera() async {
    final data = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (data != null) {
        _image = XFile(data.path);
      } else {
        print("No Image");
      }
    });
  }

  void dialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              content: Container(
                height: 130.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        fromCamera();
                        Navigator.pop(context);
                      },
                      child: const ListTile(
                        leading: Icon(Icons.camera),
                        title: Text("Camera"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        fromGallery();
                        Navigator.pop(context);
                      },
                      child: const ListTile(
                        leading: Icon(Icons.photo),
                        title: Text("Gallery"),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Add Product"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  CustomTextClass.customText(
                                    CategoriesNames[index],
                                    0xff000000,
                                    10.sp,
                                    yourFontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText("Title", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(
                    height: 10.h,
                  ),
                  getTextFiled(33.h, 225.w),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText("Add Images", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(
                    height: 9.h,
                  ),
                  CustomTextClass.customText(
                      "Upload 4 Images", 0xff000000, 10.sp,
                      yourFontWeight: FontWeight.w400),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w),
              child: SizedBox(
                height: 100.h,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: Container(
                      height: 92.h,
                      width: 133.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffC4C4C4).withOpacity(0.5),
                        ),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 60.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Image.asset(
                                "assets/Images/imageSelect.png",
                                height: 30.h,
                                width: 30.w,
                                fit: BoxFit.fill,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.w,
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 15,
                                    color: const Color(0xffC4C4C4)
                                        .withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText("Price", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextClass.customText("\$$value/hr", 0xff000000, 12.sp,
                      yourFontWeight: FontWeight.w500,
                      yourFontFamily: "Roboto"),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0.h, bottom: 10.h),
                    child: CustomTextClass.customText("Beds", 0xff000000, 16.sp,
                        yourFontFamily: "Roboto"),
                  ),
                  Stack(children: [
                    Container(
                      height: 42.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffC4C4C4),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 73.w,
                            child: Center(
                              child: CustomTextClass.customText(
                                  "1", 0xff000000, 16.sp),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 1,
                            color: Colors.black,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                select=2;
                              });
                            },
                            child: SizedBox(
                              width: 73.w,
                              child: Center(
                                child: CustomTextClass.customText(
                                    "2", 0xff000000, 16.sp),
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 1,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 73.w,
                            child: Center(
                              child: CustomTextClass.customText(
                                  "3", 0xff000000, 16.sp),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 1,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 73.w,
                            child: Center(
                              child: CustomTextClass.customText(
                                  "4", 0xff000000, 16.sp),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 1,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 73.w,
                            child: Center(
                              child: CustomTextClass.customText(
                                  "+5", 0xff000000, 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          select=1;
                        });
                      },
                      child: Container(
                        height: 42.h,
                        width: 74.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color:select==1?const Color(0xffBC0420):Colors.transparent,
                          width: 2,
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          select=2;
                        });
                      },
                      child: Positioned(
                        left:74.w,
                        child: Container(
                          height: 42.h,
                          width: 76.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color:select==2?const Color(0xffBC0420):Colors.transparent,
                                width: 2,
                              )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          select=3;
                        });
                      },
                      child: Positioned(
                        left:148.w,
                        child: Container(
                          height: 42.h,
                          width: 76.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color:select==3?const Color(0xffBC0420):Colors.transparent,                          width: 2,
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          select=4;
                        });
                      },
                      child: Positioned(
                        left:222.w,
                        child: Container(
                          height: 42.h,
                          width: 76.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color:select==4?const Color(0xffBC0420):Colors.transparent,                          width: 2,
                          )),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          select=5;
                        });
                      },
                      child: Positioned(
                        left:296.w,
                        child: Container(
                          height: 42.h,
                          width: 78.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color:select==5?const Color(0xffBC0420):Colors.transparent,                          width: 2,
                          )),
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0.h, bottom: 10.h),
                    child: CustomTextClass.customText("Bath", 0xff000000, 16.sp,
                        yourFontFamily: "Roboto"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0.h, bottom: 10.h),
                    child: CustomTextClass.customText(
                        "Floor", 0xff000000, 16.sp,
                        yourFontFamily: "Roboto"),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText(
                      "Add Your Document", 0xff000000, 12.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 109.h,
                    width: 157.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      border: Border.all(
                          width: 1,
                          color: const Color(0xffC4C4C4).withOpacity(.5)),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/Images/addaccount.png",
                        height: 50.h,
                        width: 79.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText("Description", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Card(
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At imperdiet dui accumsan sit amet nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At imperdiet dui accumsan sit amet nulla facilisi.  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At imperdiet dui accumsan sit amet nulla facilisi.",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  CustomButton.customGradientButton("Done", () {}),
                  SizedBox(
                    height: 69.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox getTextFiled(double enterHeight, double enterWidth) {
    return SizedBox(
      height: enterHeight,
      width: enterWidth,
      child: TextField(
        style: TextStyle(fontSize: 15.sp),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
