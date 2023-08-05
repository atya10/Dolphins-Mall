 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 BorderRadiusGeometry Borderr(double Raduis){
  return BorderRadius.only(
    bottomLeft: Radius.circular(Raduis.r),
    bottomRight: Radius.circular(Raduis.r),
    topLeft: Radius.circular(Raduis.r),
    topRight: Radius.circular(Raduis.r),
  );
}
 BorderRadiusGeometry Borderrr(double bottomLeft,double bottomRight,double topLeft,double topRight){
   return BorderRadius.only(
     bottomLeft: Radius.circular(bottomLeft.r),
     bottomRight: Radius.circular(bottomRight.r),
     topLeft: Radius.circular(topLeft.r),
     topRight: Radius.circular(topRight.r),
   );
 }

 Widget AddVerticalSpace(double num){
   return SizedBox(height: num,);
 }
 Widget AddHorizentalSpace(double num){
   return SizedBox(width: num,);
 }


 ShapeBorder shape(double num){
   return RoundedRectangleBorder(
     borderRadius: BorderRadius.vertical(
       top: Radius.circular(num.r),
     ),
   );
 }