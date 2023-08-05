//

import 'package:dolphins_mall/UI/Login/pages/home1.dart';
import 'package:dolphins_mall/UI/Login/pages/verificationcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword>
    with SingleTickerProviderStateMixin {
  final _formKey4 = GlobalKey<FormState>();
  final _passwordController2 = TextEditingController();
  late TabController _tabController4;

  Map<String, String> _authDataNewPassword = {'NewPassword': ''};

  @override
  void initState() {
    super.initState();

    _tabController4 = TabController(vsync: this, length: 1);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Container(
              margin: EdgeInsets.only(
                right: 144.w,
                left: 129.w,
                top: 59.h,
                bottom: 19.h,
              ),
              child: Text(
                'Dolphins Mall',
                style: TextStyle(
                  fontFamily: 'Montserrat-Arabic',
                  fontSize: 22.sp,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
                overflow: TextOverflow.visible,
              ),
            ),
            backgroundColor: const Color(0xffF4F4F4),
            bottom: TabBar(
              controller: _tabController4,
              //dividerColor:  const Color(0xffFA4F4D),
              indicatorWeight: 6.w,
              indicatorColor: const Color(0xffFA4F4D),
              indicatorPadding: EdgeInsets.only(right: 93.w, left: 94.w),

              //controller: _tabController,
              tabs: [
                Container(
                  alignment: Alignment.center,
                  child: Tab(
                    height: 43.h,
                    //  text: 'تسجيل الدخول',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 96.w,
                          margin: EdgeInsets.only(
                            right: 139.w,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'نسيت كلمة المرور',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Arabic',
                              fontSize: 13.sp,
                              color: const Color(0xff454f63),
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              // margin: EdgeInsets.only(left: 20.w,),
                                width: 40.w,
                                height: 40.h,
                                alignment: Alignment.center,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/image/arrow.png'
                                  ),)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController4,
            children: [
              screen4(),
            ],
          ),
        ),
      ),
    );
  }

  Container screen4() {
    return Container(
      margin: EdgeInsets.only(right: 19.w, left: 20.w, top: 27.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey4,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 18.h),
                    width: 336.w,
                    //height: 52.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x14455b63),
                          offset: Offset(0, 4),
                          blurRadius: 29,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: const Color(0xff4B4B4B),
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat-Arabic',
                      ),
                      decoration: const InputDecoration(
                          labelText: "كلمة المرور الجديدة"),
                      controller: _passwordController2,
                      obscureText: true,
                      //keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        // // !val.contains('@'
                        if (value!.isEmpty) {
                          return "مطلوب";
                        } else if (value!.length < 8) {
                          return "الكلمة قصيرة يجب وضعها من 8 او اكثر";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        _authDataNewPassword['NewPassword'] = value!;
                        print(_authDataNewPassword['NewPassword']);
                      },
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(),
                    width: 336.w,
                    //height: 52.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x14455b63),
                          offset: Offset(0, 4),
                          blurRadius: 29,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: const Color(0xff4B4B4B),
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat-Arabic',
                      ),
                      decoration: const InputDecoration(
                          labelText: "كلمة المرور مرة اخرى"),
                      obscureText: true,
                      //keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if ((value!.isEmpty && value!.length >= 8)) {
                        } else if (value != _passwordController2.text) {
                          return "الكلمة غير متطابقة";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 241.h),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: _new,
                      child: Container(
                        alignment: Alignment.center,
                        width: 336.w,
                        height: 52.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffFA4F4D),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'استعادة كلمة المرور',
                          style: TextStyle(
                            fontFamily: 'Montserrat-Arabic',
                            fontSize: 18.sp,
                            color: const Color(0xffffffff),
                            letterSpacing: 0.36.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _new() {
    atya() {
      _formKey4.currentState?.save();

      showDialog0();
    }

    if (_formKey4.currentState!.validate()) {
      return atya();
    }

    /*
    if (!_formKey3.currentState!.validate()) {
      return ;
    }else
     */
  }

  Future showDialog0() {
    return showDialog(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        content: Container(
          alignment: Alignment.center,
          width: 335.w,
          height: 248.h,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                 margin: EdgeInsets.only(bottom: 14.h),
                  child: Text(
                    'تم استعادة كلمة المرور',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Arabic',
                      fontSize: 18.sp,
                      color: const Color(0xff000000),
                      letterSpacing: 0.36.h,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 17.h),
                  child: Text(
                    'يرجى تسجيل الدخول للمتابعة',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Arabic',
                      fontSize: 12.sp,
                      color: const Color(0xff000000),
                      letterSpacing: 0.36.h,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 23.h),
                    width: 75.w,
                    height: 75.h,
                    alignment: Alignment.center,
                    child: const Image(image: AssetImage(
                        'assets/image/group.png'
                    ),)
                ),
                Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: _home,
                    child: Container(
                      alignment: Alignment.center,
                      width: 140.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffFA4F4D),
                        ),
                          borderRadius: BorderRadius.circular(19)),
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontFamily: 'Montserrat-Arabic',
                          fontSize: 12.sp,
                          color: const Color(0xffFA4F4D),
                          letterSpacing: 0.36.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _home() {
    WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>const MyHomePage()),
    ));
    Navigator.of(context).pop();

  }

}

/*
Container(
decoration: BoxDecoration(
color: const Color(0xffffffff),
borderRadius: BorderRadius.circular(3.0),
boxShadow: [
BoxShadow(
color: const Color(0x29000000),
offset: Offset(0, 0),
blurRadius: 62,
),
],
),
)


Container(
    decoration: BoxDecoration(
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(19.0),
      border: Border.all(width: 1.0, color: const Color(0xffff4f3d)),
    ),
  )
 */
