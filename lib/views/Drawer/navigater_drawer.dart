import 'package:first_project/widgets/text_custom_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DrawerNavigation extends StatefulWidget {
   DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}
int changeColor=0xff444444;
String changeValue="1";
class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 209.h,
            decoration:const BoxDecoration(
              gradient:  LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xffF4E478),
            Color(0xffBC0420),
          ]),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 65.h,
                    width: 65.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(
                        fit: BoxFit.fill,
                         image: AssetImage("assets/Images/profledrawer.png"),
                       ),
                    ),
                  ),
                  SizedBox(height: 14.h,),
                  CustomTextClass.customText("Jaylon Herwitz", 0xff000000, 16.sp),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23,top: 23),
            child: Column(
              children: [
                customListTile("1", Icons.home, "Home"),
                customListTile("2",Icons.person, "Profile"),
                customListTile("3",Icons.wallet_sharp, "WishList"),
                customListTile("4",Icons.history_outlined, "History"),
                customListTile('5',Icons.production_quantity_limits, "My Product"),
                customListTile('6',Icons.settings, "Setting"),
                customListTile('7',Icons.share, "Share App"),
                customListTile('8',Icons.logout, "Logout"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InkWell customListTile(String value,IconData iconData,String textTitle)=>InkWell(
    onTap: () {
      setState(() {
        changeValue=value;
      });
    },
    child: ListTile(
      leading:Icon(iconData,size:14,color:changeValue==value?const Color(0xffBC0420):const Color(0xff444444)),
      title: CustomTextClass.customText(textTitle,changeValue==value?0xffBC0420:0xff444444, 14.sp,yourFontWeight: FontWeight.w500,yourFontFamily: "Arial"),
    ),
  );
}
