import 'package:first_project/widgets/appbar_custom_class.dart';
import 'package:first_project/widgets/customProduct_View.dart';
import 'package:flutter/material.dart';
class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarClass.customAppBar2("WishList"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Expanded(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context,int index)=>ProductViewClass.productView(),),
        ),
      ),
      
      
      
      
    );
  }
}
