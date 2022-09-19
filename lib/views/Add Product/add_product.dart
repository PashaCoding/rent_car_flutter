import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../widgets/text_custom_class.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

final ImagePicker _imagePicker = ImagePicker();
XFile? _image;
double value = 6;

class _AddProductState extends State<AddProduct> {
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
                        itemBuilder: (BuildContext context, int index) => Padding(
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
                  SizedBox(height: 20.h,),
                  CustomTextClass.customText("Title", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(height: 10.h,),
                  getTextFiled(33.h, 225.w),
                  SizedBox(height: 20.h,),
                  CustomTextClass.customText("Add Images", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(height: 9.h,),
                  CustomTextClass.customText("Upload 4 Images", 0xff000000, 10.sp,
                      yourFontWeight: FontWeight.w400),
                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.only(left:20.0.w),
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
            SizedBox(height: 18.h,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextClass.customText("Brand", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(height: 20.h,),
                  SizedBox(
                    height: 33.h,
                    width: 225.w,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        contentPadding: const EdgeInsets.all(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: newchangevalue,
                            iconSize: 9,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            isExpanded: true,
                            isDense: true,
                            menuMaxHeight: 200.h,
                            onChanged: (newValue) {
                              setState(() {
                                newchangevalue = newValue.toString();
                              });
                            },
                            items: [
                              const DropdownMenuItem<String>(
                                value: "",
                                child: Text("Choose Category"),
                              ),
                              ...<String>[
                                "Muzamil",
                                "Hussain",
                                "Mudasser",
                                "Others"
                              ].map<DropdownMenuItem<String>>((String e) {
                                return DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                );
                              }).toList(),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  CustomTextClass.customText("Location", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 33.h,
                    width: 225.w,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        contentPadding: const EdgeInsets.all(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            value: newchangevalue,
                            iconSize: 9,
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            isExpanded: true,
                            isDense: true,
                            menuMaxHeight: 200.h,
                            onChanged: (newValue) {
                              setState(() {
                                newchangevalue = newValue.toString();
                              });
                            },
                            items: [
                              const DropdownMenuItem<String>(
                                value: "",
                                child: Text("Choose City"),
                              ),
                              ...<String>[
                                "Muzamil",
                                "Hussain",
                                "Mudasser",
                                "Others"
                              ].map<DropdownMenuItem<String>>((String e) {
                                return DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                );
                              }).toList(),
                            ]),
                      ),
                    ),
                  ),
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
              padding: EdgeInsets.symmetric(horizontal:20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextClass.customText("\$$value/hr", 0xff000000, 12.sp,
                      yourFontWeight: FontWeight.w500, yourFontFamily: "Roboto"),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextClass.customText("Model", 0xff000000, 15.sp,
                              yourFontWeight: FontWeight.w700),
                          SizedBox(
                            height: 14.h,
                          ),
                          getTextFiled(33.h, 160.w),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextClass.customText(
                              "Sitting Capacity", 0xff000000, 15.sp,
                              yourFontWeight: FontWeight.w700),
                          SizedBox(
                            height: 14.h,
                          ),
                          getTextFiled(33.h, 160.w),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText("Gear Type", 0xff000000, 15.sp,
                      yourFontWeight: FontWeight.w700),
                  SizedBox(
                    height: 14.h,
                  ),
                  getTextFiled(33.h, 160.w),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextClass.customText("Add Your Document", 0xff000000, 12.sp,
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
                          width: 1, color: const Color(0xffC4C4C4).withOpacity(.5)),
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
