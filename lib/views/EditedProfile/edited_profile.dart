import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/profile_edited_card.dart';
import '../../widgets/text_custom_class.dart';

class EditedProfilePage extends StatelessWidget {
  const EditedProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: CustomAppbarClass.customAppBar2("Edit Profile"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/Images/profile.png"),
                        )),
                  ),
                  Positioned(
                    top: 20,
                    left: 85,
                    child: Container(
                      height: 34.h,
                      width: 34.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffBC0420),
                      ),
                      child: Center(child: Icon(Icons.camera_alt,size:16.sp,color: Color(0xffFFFFFF),)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextClass.customText("Peter Morgan", 0xff000000, 16.sp,
                  yourFontWeight: FontWeight.w700),
              SizedBox(
                height: 20.h,
              ),
              ProfileEditedCard.profileCard("Name", "jennifer lopez"),
              ProfileEditedCard.profileCard("Email", "Jennifer_1284@gmail.com"),
              ProfileEditedCard.profileCard("Phone", "+1 800 555 5555"),
              ProfileEditedCard.profileCard(
                  "Address", "172 Willowleaf Dr, Woodstock, GA"),
              ProfileEditedCard.profileCard("Account No", "0000000000000000"),
              ProfileEditedCard.profileCard("Routing", "0000000000000000"),
              SizedBox(
                height: 10.h,
              ),
              CustomButton.customGradientButton("Save Changes",(){}),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
