import 'package:dolphins_mall/UI/Home/HomeScreen/pages/HomePage.dart';
import 'package:dolphins_mall/UI/Login/pages/home1.dart';
import 'package:flutter/material.dart';
import 'package:dolphins_mall/Data/prefs_helper/iprefs_helper.dart';
import 'package:dolphins_mall/Injection.dart';
import 'package:dolphins_mall/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>  with TickerProviderStateMixin{
  bool islogedin = false;
  final pref = sl<IPrefsHelper>();

  void delay(){
    Future.delayed(const Duration(milliseconds: 6500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>const MyHomePage()
        ),
      );
    });
  }

  @override
  void initState(){
    delay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   // var h = MediaQuery.of(context).size.height;
    //var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          //width: 334.03.w,
          //height: 319.09.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 60.w,top: 32.h),
                      width: 215.w,
                      height: 221.h,
                      alignment: Alignment.center,
                      child: const Image(image: AssetImage(
                          'assets/image/logo.png'
                      ),
                        fit: BoxFit.fill,
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 281.w,top: 31.h,left: 40.w),
                    width: 20.w,
                    height: 20.h,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage(
                        'assets/image/c.png'
                    ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 52.w,top: 265.h,left: 267.w),
                    width: 20.w,
                    height: 20.h,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage(
                        'assets/image/c.png'
                    ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 292.w,top: 222.h,left: 24.w),
                    width: 20.w,
                    height: 20.h,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage(
                        'assets/image/n.png'
                    ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 70.w,top: 21.h,left: 250.w),
                    width: 20.w,
                    height: 20.h,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage(
                        'assets/image/m.png'
                    ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 167.w,top: 276.h,left: 156.w),
                    width: 20.w,
                    height: 20.h,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage(
                        'assets/image/m.png'
                    ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.w,top: 181.h,left: 308.w),
                    width: 20.w,
                    height: 20.h,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage(
                        'assets/image/d.png'
                    ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 0.h,right: 59.w,left: 60.w),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mall',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        //fontSize: 33.sp,
                        fontSize: 40.sp,
                        color: const Color(0xffFA4F4D),
                        letterSpacing: 0.28.w,
                      ),
                      //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      ' Dolphins',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        //fontSize: 33.sp,
                        fontSize: 40.sp,
                        color: const Color(0xff000000),
                        letterSpacing: 0.28.w,
                      ),
                      //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
