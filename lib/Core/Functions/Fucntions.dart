import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


Widget listLoader({context}) {
  return SpinKitThreeBounce(
    color: Colors.blue,
    size: 30.0.w,
  );
}

BorderRadiusGeometry border(double bottomLeft,double bottomRight,double topLeft,double topRight){
  return BorderRadius.only(
    bottomLeft: Radius.circular(bottomLeft.r),
    bottomRight: Radius.circular(bottomRight.r),
    topLeft: Radius.circular(topLeft.r),
    topRight: Radius.circular(topRight.r),
  );
}

Theme RemoveHighlight(Widget W){
  return Theme(
      data: ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
  ),
  child:W
  );
}
