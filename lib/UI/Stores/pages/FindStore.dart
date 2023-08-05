import 'package:dolphins_mall/UI/Login/pages/verificationcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FindTheStore extends StatefulWidget {
  const  FindTheStore({Key? key}) : super(key: key);

  @override
  State< FindTheStore> createState() => _FindTheStoreState();
}

class _FindTheStoreState extends State< FindTheStore> with SingleTickerProviderStateMixin{



  final _formKey3 = GlobalKey<FormState>();

  late TabController _tabController3;

  Map<String, String> _authDataPasswordRecovery = {'Phone': ''};

  @override
  void initState() {
    super.initState();

    _tabController3 = TabController(vsync: this, length: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        toolbarHeight: 100.h,
        centerTitle: true,
        backgroundColor: const Color(0xffFA4F4D),
        title:  Text(
          'المتاجر القريبة منك',
          style: TextStyle(
            fontFamily: 'Montserrat-Arabic',
            fontSize: 18.sp,
            color: const Color(0xffFFFFFF),
          ),
          textAlign: TextAlign.left,
          overflow: TextOverflow.visible,
        ),
        shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(105),
        ),
    ),
      ),
          drawer: Container(),
          body: Column(
            children: [

              Form(
                child:Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 20.w,left: 20.w),
                  width: 335.w,
                  //height: 52.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(96.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1a000000),
                        offset: Offset(0, 0),
                        blurRadius: 10,
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
                        suffixIcon: Icon(Icons.search),
                        labelText: "ابحث عن متجر"),



                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(),
              )
            ],
          ),
    ));
  }
}

/*
 recovery1() {

    // if (!_formKey3.currentState!.validate()) {
    //   return n();
    //
    // }

    _formKey3.currentState?.save();


    //    n (){
    //   print('clicked');
    //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //      // builder: (context) => const VerificationCode(),
    //     ),
    //   ));
    // };
  }
x(){

    return Container(
      margin: EdgeInsets.only(right: 19.w, left: 20.w, top: 26.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey3,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16.w,left: 191.w,bottom: 7.h),
                    alignment: Alignment.center,
                    child: Text(
                      'اضف رقم الجوال للمتابعة',
                      style: TextStyle(
                        fontFamily: 'Montserrat-Arabic',
                        fontSize: 12.sp,
                        color: const Color(0xff979797),
                        letterSpacing: 0.24.h,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Container(
                    width: 336.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5.w),
                      boxShadow: const [
                        BoxShadow(
                          color:  Color(0x14455b63),
                          offset: Offset(0, 4),
                          blurRadius: 29,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 18.h),
                    child: TextFormField(

                      style: TextStyle(
                        color: const Color(0xff4B4B4B),
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat-Arabic',
                      ),
                      decoration:  const InputDecoration(
                        labelText: "رقم الجوال",

                      ),

                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        // // !val.contains('@'
                        if (val!.isEmpty) {
                          return "ادخال خاطئ";
                        } else if (val!.length != 10) {
                          return "ادخال خاطئ";
                        } else {
                          return 'atya';
                        }
                      },
                      onSaved: (valueRecovery) {
                        _authDataPasswordRecovery['Phone'] = valueRecovery!;
                        print(_authDataPasswordRecovery['Phone']);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27.w,left: 65.w,top: 13.h),
                    alignment: Alignment.center,
                    child: Text(
                      'سيتم ارسال كود برقم الجوال لاستعادة كلمة السر',
                      style: TextStyle(
                        fontFamily: 'Montserrat-Arabic',
                        fontSize: 12.sp,
                        color: const Color(0xff979797),
                        letterSpacing: 0.24.h,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 241.h),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.center,
                        width: 336.w,
                        height: 52.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffFA4F4D),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'متابعة',
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
 */




/*

DefaultTabController(
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
              controller: _tabController3,
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
            controller: _tabController3,
            children: [

              screen3(),
            ],
          ),
        ),
      ),
    );



Container screen3() {

    return Container(
      margin: EdgeInsets.only(right: 19.w, left: 20.w, top: 26.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey3,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16.w,left: 191.w,bottom: 7.h),
                    alignment: Alignment.center,
                    child: Text(
                      'اضف رقم الجوال للمتابعة',
                      style: TextStyle(
                        fontFamily: 'Montserrat-Arabic',
                        fontSize: 12.sp,
                        color: const Color(0xff979797),
                        letterSpacing: 0.24.h,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Container(
                    width: 336.w,
                    //height: 52.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5.w),
                      boxShadow: const [
                        BoxShadow(
                          color:  Color(0x14455b63),
                          offset: Offset(0, 4),
                          blurRadius: 29,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: 18.h),
                    child: TextFormField(

                      style: TextStyle(
                        color: const Color(0xff4B4B4B),
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat-Arabic',
                      ),
                      decoration:  const InputDecoration(
                        labelText: "رقم الجوال",

                      ),

                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        // // !val.contains('@'
                        if (val!.isEmpty) {
                          return "ادخال خاطئ";
                        } else if (val!.length != 10) {
                          return "ادخال خاطئ";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        _authDataPasswordRecovery['Phone'] = val!;
                        print(_authDataPasswordRecovery['Phone']);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 27.w,left: 65.w,top: 13.h),
                    alignment: Alignment.center,
                    child: Text(
                      'سيتم ارسال كود برقم الجوال لاستعادة كلمة السر',
                      style: TextStyle(
                        fontFamily: 'Montserrat-Arabic',
                        fontSize: 12.sp,
                        color: const Color(0xff979797),
                        letterSpacing: 0.24.h,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 241.h),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: _recovery,
                      child: Container(
                        alignment: Alignment.center,
                        width: 336.w,
                        height: 52.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffFA4F4D),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'متابعة',
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



   _recovery() {
    atya(){
      _formKey3.currentState?.save();
      WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>const VerificationCode()),
      ));
    }

    if (_formKey3.currentState!.validate()) {
      return atya();
    }

    /*
    if (!_formKey3.currentState!.validate()) {
      return ;
    }else
     */


  }

 */




