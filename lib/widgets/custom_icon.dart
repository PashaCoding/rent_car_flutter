import 'package:flutter/material.dart';
class CustomIconClass {
  static Icon customIcon(int iconColor,double iconSize)=> Icon(
    Icons.star,
    color: Color(iconColor),
    size: iconSize,
  );
}
