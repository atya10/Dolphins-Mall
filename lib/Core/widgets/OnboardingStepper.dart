import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Steppers extends StatefulWidget {
   Steppers({Key? key,required this.Images,required this.Status,required this.want_normal}) : super(key: key);
List<String> Images;
List<bool> Status;
bool want_normal;
  @override
  State<Steppers> createState() => _SteppersState();
}

class _SteppersState extends State<Steppers> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w/1,
      height: h/8,

      margin: EdgeInsets.only(left: 45.w),
      child: ListView.builder(
        cacheExtent : 500,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection:  Axis.horizontal,
        itemCount:widget.Images.length,
        itemBuilder:  (BuildContext context, int index) {
          return Row(
            children: [
              index!= 0?
              Container(
                height: 7.h,
                width: 25.w,
                margin: EdgeInsets.only(right: 4.65.w,left: 4.65.w),
                decoration:  BoxDecoration(
                  color: widget.want_normal
                      ?    widget.Status[index]? Color(0xffCF6D38):Color(0xff939393)
                  : widget.Status[index] || index ==1? Color(0xffCF6D38):Color(0xff939393),
                  borderRadius : BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    topRight:Radius.circular(5.r),
                    bottomLeft: Radius.circular(5.r),
                    bottomRight:Radius.circular(5.r),
                  ),
                ),
              ):Container(),
              Stack(
              children: [
                Container(
                  width: w/10.5,
                    child: AspectRatio(
                        aspectRatio: 20 / 20,
                        //aspect ratio for Image
                        child: SvgPicture.asset("Assets/images/bubbles.svg",
                          color:widget.want_normal
                               ?index==0 || widget.Status[index]? Color(0xffCF6D38):Color(0xff939393)
                              :  index==0 || index==1|| widget.Status[index]? Color(0xffCF6D38):Color(0xff939393),


                          fit: BoxFit.fill,
                        ))
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Image.asset(widget.Images[index]),
                )
              ],
              ),

              ],
          );
          }
      )
    );
  }
}

