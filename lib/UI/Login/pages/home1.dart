import 'dart:io';
import 'package:dolphins_mall/Injection.dart';
import 'package:dolphins_mall/UI/Login/bloc/Login_bloc.dart';
//import 'package:dolphins_mall/UI/Login/bloc/Login_event.dart';
import 'package:dolphins_mall/UI/Login/bloc/Login_state.dart';
import 'package:dolphins_mall/UI/Login/pages/passwordrecovery.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/material.dart';

import '../../Stores/pages/FindStore.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends  State<MyHomePage> with TickerProviderStateMixin {


  final _Loginbloc = sl<LoginBloc>();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
 // final _formKey2 = GlobalKey<FormState>();

  //Map<String, String> _authDataPasswordRecovery = {'Phone': ''};

  Map<String, String> _authDataLogin = {'Phone': '', 'Password': ''};

  Map<String, String> _authDataSignup = {
    'FirstName':'',
    'SecondName':'',
    'Email': '',
    'City': '',
    'Phone': '',
    'Password': ''};

   String? _selectedCity;
  List _cityList = [
    'غزة',
    'وسطى',
    'خانيونس',
    'رفح',
  ];
  // List<Widget>? tabbar1 =[
  //     Container(
  //       alignment: Alignment.center,
  //       child: Tab(
  //         height: 43.h,
  //         //text: 'تسجيل الدخول',
  //         child: Text(
  //           'تسجيل الدخول',
  //           style: TextStyle(
  //             fontFamily: 'Montserrat-Arabic',
  //             fontSize: 13.sp,
  //             color: const Color(0xff454f63),
  //           ),
  //           textAlign: TextAlign.center,
  //           overflow: TextOverflow.visible,
  //         ),),
  //     ),
  //     Container(
  //       alignment: Alignment.center,
  //       child: Tab(
  //         height: 43.h,
  //         child:  Text(
  //           'تسجيل جديد',
  //           style: TextStyle(
  //             fontFamily: 'Montserrat-Arabic',
  //             fontSize: 13.sp,
  //             color: const Color(0xff454f63),
  //           ),
  //           textAlign: TextAlign.center,
  //           overflow: TextOverflow.visible,
  //         ),),
  //     ),
  // ];
  // List<Widget>? tabbar2 =[
  //   Container(
  //     alignment: Alignment.center,
  //     child: Tab(
  //
  //       height: 43.h,
  //       //  text: 'تسجيل الدخول',
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //
  //           Container(
  //             width: 96.w,
  //             margin: EdgeInsets.only(
  //               right: 139.w,
  //             ),
  //             alignment: Alignment.center,
  //             child: Text(
  //               'نسيت كلمة المرور',
  //               style: TextStyle(
  //                 fontFamily: 'Montserrat-Arabic',
  //                 fontSize: 13.sp,
  //                 color: const Color(0xff454f63),
  //               ),
  //               textAlign: TextAlign.center,
  //               overflow: TextOverflow.visible,
  //             ),
  //           ),
  //           Container(
  //             alignment: Alignment.center,
  //             width: 25.w,
  //             // margin: EdgeInsets.only(left: 20.w,),
  //             child: IconButton(
  //               color: const Color(0xff454F63),
  //               onPressed: () {
  //              //   Navigator.pop(Context);
  //
  //               },
  //               icon: const Icon(Icons.arrow_back_ios_new),
  //
  //
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   )
  // ];
  //
  //
  // List<Widget>? body1;
  // List<Widget>? body2;


  final _passwordController = TextEditingController();
  final _passwordController1 = TextEditingController();
  //var _isLoading = false;
  //final TextEditingController _Controller = TextEditingController();
  //final FocusNode _FocusNode = FocusNode();

  late TabController _tabController;
 // late TabController _tabController1;

@override
  void initState() {
  // body1 = [
  //   // Container(
  //   //   child: InkWell(
  //   //       onTap:(){
  //   //         _Loginbloc.add(ChangeTab());
  //   //       } ,
  //   //       child: Text('button')),
  //   // ),
  //   //
  //   screen2(),
  //
  //   screen1(),
  //
  // ];
  // body2 = [
  //   Container(
  //     child: InkWell(
  //         onTap:(){
  //           _Loginbloc.add(ChangeTab());
  //         } ,
  //         child: Text('button')),
  //   ),
  //
  //
  // ];
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
   // _tabController1 = TabController(vsync: this, length: 1);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _Loginbloc,
        builder: (BuildContext context, LoginState state)
    {
      return
      DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(

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
                controller: _tabController,
                //dividerColor:  const Color(0xffFA4F4D),
                  indicatorColor: const Color(0xffFA4F4D),
                  indicatorWeight: 7.w,
                //  controller: state.iS_Tab1!?_tabController:_tabController1,
                  //tabs: state.iS_Tab1! ?tabbar1!:tabbar2!,
                tabs: [
                  Container(
                    alignment: Alignment.center,
                    child: Tab(
                      height: 43.h,
                      //text: 'تسجيل الدخول',
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontFamily: 'Montserrat-Arabic',
                          fontSize: 13.sp,
                          color: const Color(0xff454f63),
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                      ),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Tab(
                      height: 43.h,
                      child:  Text(
                        'تسجيل جديد',
                        style: TextStyle(
                          fontFamily: 'Montserrat-Arabic',
                          fontSize: 13.sp,
                          color: const Color(0xff454f63),
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                      ),),
                  ),
                ],
              ),
            ),
            body: TabBarView(
                 controller: _tabController,
                // children: state.iS_Tab1! ?body1!:body2!,
                 children: [

                   screen2(),
                   screen1()
                 ],

            ),
          ),
        ),
      );
    }
    );
  }

  Container screen2() {
    return Container(
      margin: EdgeInsets.only(right: 19.w,left: 20.w,top: 26.h),
      child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
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
                                return null;
                              }
                            },
                            onSaved: (val) {
                              _authDataLogin['Phone'] = val!;
                              print(_authDataLogin['Phone']);
                            },
                          ),
                        ),
                        Container(
                          width: 336.w,
                          height: 52.h,
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
                            decoration: const InputDecoration(labelText: "كلمة المرور"),
                            controller: _passwordController,
                            obscureText: true,
                            //keyboardType: TextInputType.visiblePassword,
                            validator: (val) {
                              // // !val.contains('@'
                              if (val!.isEmpty) {
                                return "ادخال خاطئ";
                              } else if (val!.length < 8) {
                                return "ادخال خاطئ";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              _authDataLogin['Password'] = val!;
                              print(_authDataLogin['Password']);
                            },
                          ),
                        ),
                        Container(
                          width: 97.w,
                          margin: EdgeInsets.only(right: 239.w,bottom: 21.h,top: 9.h),
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap:(){
                              print('clicked');
                              WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PasswordRecovery1(),
                                ),
                              ));
                            },

                            child: Text(
                              'نسيت كلمة المرور؟',
                              style: TextStyle(
                                fontFamily: 'Montserrat-Arabic',
                                fontSize: 12.sp,
                                color: const Color(0xff979797),
                                letterSpacing: 0.24.h,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: _login,
                              child: Container(
                                alignment: Alignment.center,
                                width: 336.w,
                                height: 52.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFA4F4D),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat-Arabic',
                                    fontSize: 18.sp,
                                    color: const Color(0xffffffff),
                                    letterSpacing: 0.36.h,
                                  ),
                                ),

                              ),
                            ),
                            Container(
                              width: 185.w,
                             margin: EdgeInsets.only(top: 20.h),
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: (){
                                  _tabController.animateTo(
                                    1,
                                    duration: const Duration( milliseconds: 400),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      'ليس لديك حساب؟ ',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat-Arabic',
                                        fontSize: 14.sp,
                                        color: const Color(0xff000000),
                                        letterSpacing: 0.28.w,
                                      ),
                                      //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                                      overflow: TextOverflow.visible,
                                    ),
                                    Text(
                                      'تسجيل جديد',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat-Arabic',
                                        fontSize: 14.sp,
                                        color: const Color(0xffFA4F4D),
                                        letterSpacing: 0.28.w,
                                      ),
                                      //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 247.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15.h),
                          width: 335.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffdddddd),

                              ),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: InkWell(

                              onTap: (){},
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 30.3.w),
                                    width: 20.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    child: const Image(image: AssetImage(
                                        'assets/image/facebook.png'
                                    ),)
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 58.2.w),
                                  width: 142.w,
                                    child: Text(
                                      'متابعة باستخدام فيسبوك',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat-Arabic',
                                        fontSize: 14.sp,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    )
                                  ),


                                ],
                              )
                          ),
                        ),
                        Container(
                         // margin: EdgeInsets.only(bottom: 20.h),
                          width: 335.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffdddddd)
                              ),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: InkWell(

                              onTap: (){},
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 30.3.w),
                                    width: 20.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    child: const Image(image: AssetImage(
                                        'assets/image/google.png'
                                    ),)
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 57.2.w),
                                  width: 142.w,
                                    child: Text(
                                      'متابعة باستخدام جوجل',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat-Arabic',
                                        fontSize: 14.sp,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    )
                                  ),


                                ],
                              )
                          ),
                        ),
                       Platform.isIOS?
                        Container(
                          margin: EdgeInsets.only(top: 15.h,bottom: 11.h),
                          width: 335.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffdddddd)
                              ),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: InkWell(

                              onTap: (){},
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 30.3.w),
                                    width: 20.w,
                                    height: 20.h,
                                    alignment: Alignment.center,
                                    child: const Image(image: AssetImage(
                                        'assets/image/apple.png'
                                    ),)
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 50.2.w),
                                  width: 142.w,
                                    child: Text(
                                      'متابعة باستخدام ابل',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat-Arabic',
                                        fontSize: 14.sp,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    )
                                  ),


                                ],
                              )
                          ),
                        )
                        :Container(height: 11.h,),





                      ],
                    ),
                  ),


                ],
              ),
            ),
    );
  }

  Container screen1() {
    return Container(
      margin: EdgeInsets.only(right: 19.w,left: 19.w,top: 17.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey1,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 17.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 156.w,
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

                          child: TextFormField(

                            style: TextStyle(
                              color: const Color(0xff4B4B4B),
                              fontSize: 14.sp,
                              fontFamily: 'Montserrat-Arabic',
                            ),
                            decoration:  const InputDecoration(
                              labelText: "الأسم الاول",

                            ),

                            keyboardType: TextInputType.name,
                            validator: (value) {
                              // // !val.contains('@'
                              if (value!.isEmpty) {
                                return "مطلوب";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              _authDataSignup['FirstName'] = value!;
                              print(_authDataSignup['FirstName']);
                            },
                          ),
                        ),
                        Container(
                          width: 156.w,
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
                          child: TextFormField(

                            style: TextStyle(
                              color: const Color(0xff4B4B4B),
                              fontSize: 14.sp,
                              fontFamily: 'Montserrat-Arabic',
                            ),
                            decoration:  const InputDecoration(
                              labelText: "الأسم الثاني",

                            ),

                            keyboardType: TextInputType.name,
                            validator: (value) {
                              // // !val.contains('@'
                              if (value!.isEmpty) {
                                return "مطلوب";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              _authDataSignup['SecondName'] = value!;
                              print(_authDataSignup['SecondName']);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    width: 336.w,
                    height: 52.h,
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
                      decoration: const InputDecoration(labelText: "الأيميل الشخصي"),

                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        // // !val.contains('@'
                        if (value!.isEmpty) {
                          return "مطلوب";
                        } else if (!value.contains('@')) {
                          return "الايميل غير صحيح";
                        } else if (!value.contains('.')) {
                          return "الايميل غير صحيح";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        _authDataSignup['Email'] = value!;
                        print(_authDataSignup['Email']);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    width: 336.w,
                    height: 52.h,
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
                      decoration: const InputDecoration(labelText: "المدينة"),

                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "مطلوب";
                        }  else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        _authDataSignup['City'] = value!;
                        print(_authDataSignup['City']);
                      },
                    ),
                  ),
                  // Container(
                  //   width: 336.w,
                  //   height: 52.h,
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xffffffff),
                  //     borderRadius: BorderRadius.circular(5.0),
                  //     boxShadow: const [
                  //       BoxShadow(
                  //         color: Color(0x14455b63),
                  //         offset: Offset(0, 4),
                  //         blurRadius: 29,
                  //       ),
                  //     ],
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         child: Text(
                  //           'المدينة',
                  //           style: TextStyle(
                  //             color: const Color(0xff4B4B4B),
                  //             fontSize: 14.sp,
                  //             fontFamily: 'Montserrat-Arabic',
                  //           ),
                  //         ),
                  //       ),
                  //       DropdownButtonFormField(
                  //           hint: Text(
                  //             '',
                  //             style: TextStyle(
                  //               color: const Color(0xff4B4B4B),
                  //               fontSize: 14.sp,
                  //               fontFamily: 'Montserrat-Arabic',
                  //             ),
                  //           ),
                  //           value: _selectedCity,
                  //           items: _cityList.map((item) {
                  //             return DropdownMenuItem(
                  //                 value: item,
                  //                 child: Text(
                  //                   item,
                  //                   style: TextStyle(
                  //                     color: const Color(0xff4B4B4B),
                  //                     fontSize: 14.sp,
                  //                     fontFamily: 'Montserrat-Arabic',
                  //                   ),
                  //                 ),
                  //             );
                  //           }).toList(),
                  //           onChanged: (newvalue){
                  //          setState(() {
                  //            _selectedCity = newvalue.toString();
                  //          });
                  //           },
                  //
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
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
                      validator: (value) {
                        // // !val.contains('@'
                        if (value!.isEmpty) {
                          return "مطلوب";
                        } else if (value!.length != 10) {
                          return "الرقم غير صالح";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        _authDataSignup['Phone'] = value!;
                        print(_authDataSignup['Phone']);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    width: 336.w,
                    height: 52.h,
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
                      decoration: const InputDecoration(labelText: "كلمة المرور"),
                      controller: _passwordController1,
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
                        _authDataLogin['Password'] = value!;
                        print(_authDataLogin['Password']);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    width: 336.w,
                    height: 52.h,
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
                      decoration: const InputDecoration(labelText: "تاكيد كلمة المرور"),
                      obscureText: true,
                      //keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value != _passwordController1.text) {
                          return "الكلمة غير متطابقة";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),

                  Column(
                    children: [
                      InkWell(
                        onTap: _signup,
                        child: Container(
                          alignment: Alignment.center,
                          width: 336.w,
                          height: 52.h,
                          decoration: BoxDecoration(
                              color: const Color(0xffFA4F4D),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            'تسجيل جديد',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Arabic',
                              fontSize: 18.sp,
                              color: const Color(0xffffffff),
                              letterSpacing: 0.36.h,
                            ),
                          ),

                        ),
                      ),
                      Container(
                        width: 195.w,
                        margin: EdgeInsets.only(top: 15.h),
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: (){
                            _tabController.animateTo(
                              0,
                              duration: const Duration( milliseconds: 400),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                'لديك حساب بالفعل؟ ',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-Arabic',
                                  fontSize: 14.sp,
                                  color: const Color(0xff000000),
                                  letterSpacing: 0.28.w,
                                ),
                                //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                                overflow: TextOverflow.visible,
                              ),
                              Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-Arabic',
                                  fontSize: 14.sp,
                                  color: const Color(0xffFA4F4D),
                                  letterSpacing: 0.28.w,
                                ),
                                //textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15.h),
                    width: 335.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffdddddd)
                        ),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: InkWell(

                        onTap: (){},
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 30.3.w),
                                width: 20.w,
                                height: 20.h,
                                alignment: Alignment.center,
                                child: const Image(image: AssetImage(
                                    'assets/image/facebook.png'
                                ),)
                            ),
                            Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 58.2.w),
                                width: 142.w,
                                child: Text(
                                  'متابعة باستخدام فيسبوك',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat-Arabic',
                                    fontSize: 14.sp,
                                    color: const Color(0xff000000),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                )
                            ),


                          ],
                        )
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(bottom: 20.h),
                    width: 335.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffdddddd)
                        ),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: InkWell(

                        onTap: (){},
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 30.3.w),
                                width: 20.w,
                                height: 20.h,
                                alignment: Alignment.center,
                                child: const Image(image: AssetImage(
                                    'assets/image/google.png'
                                ),)
                            ),
                            Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 57.2.w),
                                width: 142.w,
                                child: Text(
                                  'متابعة باستخدام جوجل',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat-Arabic',
                                    fontSize: 14.sp,
                                    color: const Color(0xff000000),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                )
                            ),


                          ],
                        )
                    ),
                  ),
                 Platform.isIOS?
                  Container(
                    margin: EdgeInsets.only(top: 15.h,bottom: 11.h),
                    width: 335.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffdddddd)
                        ),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: InkWell(

                        onTap: (){},
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 30.3.w),
                                width: 20.w,
                                height: 20.h,
                                alignment: Alignment.center,
                                child: const Image(image: AssetImage(
                                    'assets/image/apple.png'
                                ),)
                            ),
                            Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 50.2.w),
                                width: 142.w,
                                child: Text(
                                  'متابعة باستخدام ابل',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat-Arabic',
                                    fontSize: 14.sp,
                                    color: const Color(0xff000000),
                                  ),
                                  textAlign: TextAlign.center,
                                  softWrap: false,
                                )
                            ),


                          ],
                        )
                    ),
                  )
                     :Container(height: 11.h,),





                ],
              ),
            ),


          ],
        ),
      ),
    );
  }




  void _login() {
    if (_formKey.currentState!.validate()) {
      return WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>const FindTheStore()),
      ));
    }
    _formKey.currentState?.save();
  }

  void _signup() {
    if (!_formKey1.currentState!.validate()) {
      return;
    }
    _formKey1.currentState?.save();
  }


}

/*
Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      border: Border.all(width: 1.0, color: const Color(0xffdddddd)),
    ),
  )

 Form(
            key: _formKey1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: "رقم الجوال"),
                    keyboardType: TextInputType.phone,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "ادخال خاطئ";
                      }else if (val!.length != 10){
                        return "ادخال خاطئ";
                      }
                      else {
                        return null;
                      }
                    },
                    onSaved: (val) {

                      _authDataSignup['phone'] = val!;
                      print(_authDataSignup['phone']);
                    },
                  ),


                  ),

                ],
              ),
            ),
          );

    Container(
                    width: 97.w,
                    margin: EdgeInsets.only(right: 239.w,bottom: 21.h,top: 9.h),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){

                        // tabController.animateTo(
                        //   1,
                        //   duration: const Duration( milliseconds: 400),
                        //   curve: Curves.easeIn,
                        // );
                      },
                      child: Text(
                        'نسيت كلمة المرور؟',
                        style: TextStyle(
                          fontFamily: 'Montserrat-Arabic',
                          fontSize: 12.sp,
                          color: const Color(0xff979797),
                          letterSpacing: 0.24.h,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),

                  passwordRecovery();



                  Map<String, String> _thePrice = {
    'car' :'100$',
    'book':'10$',
    'Q': '1$',
    'C': '2$',
    'd': '3$',
    's': '4$'};
  */

/*

 DefaultTabController passwordRecovery11() {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
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
              controller: _tabController1,
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
                          alignment: Alignment.center,
                          width: 25.w,
                          // margin: EdgeInsets.only(left: 20.w,),
                          child: IconButton(
                            color: const Color(0xff454F63),
                            onPressed: (){
                              _tabController.animateTo(
                                1,
                                duration: const Duration( milliseconds: 400),
                                curve: Curves.easeIn,
                              );
                            },
                            icon: const Icon(Icons.keyboard_backspace),
                          ),
                        ),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            //controller: tabController,
            controller: _tabController1,
            children: [
              Container(
                margin: EdgeInsets.only(right: 19.w, left: 20.w, top: 26.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        key: _formKey2,
                        child: Column(
                          children: [
                            Container(
                              width: 336.w,
                              height: 52.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(5.w),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x14455b63),
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
                                decoration: const InputDecoration(
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
                            InkWell(
                              onTap: _recovery,
                              child: Container(
                                alignment: Alignment.center,
                                width: 336.w,
                                height: 52.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFA4F4D),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat-Arabic',
                                    fontSize: 18.sp,
                                    color: const Color(0xffffffff),
                                    letterSpacing: 0.36.h,
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
              )
            ],
          ),
        ),
      ),
    );
  }

   void _recovery() {
    if (!_formKey2.currentState!.validate()) {
      return;
    }
    _formKey2.currentState?.save();
  }


  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: const AssetImage(''),
        fit: BoxFit.fill,
      ),
    ),
  )

  Stack(
    children: <Widget>[
      Pinned.fromPins(
        Pin(start: 60.0, end: 59.0),
        Pin(size: 221.0, start: 32.1),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(''),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Pinned.fromPins(
        Pin(size: 267.7, end: 33.2),
        Pin(size: 303.7, end: 15.9),
        child: Transform.rotate(
          angle: 1.4486,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment(0.441, -1.0),
                child: SizedBox(
                  width: 17.0,
                  height: 17.0,
                  child: SvgPicture.string(
                    '<svg viewBox="840.7 355.4 16.9 16.9" ><path transform="matrix(-0.669131, 0.743145, -0.743145, -0.669131, 857.66, 363.39)" d="M 0 0 L 11.98810482025146 0 L 11.98810482025146 11.98810482025146 L 0 11.98810482025146 L 0 0 Z" fill="#fbcfbc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.487, 1.0),
                child: SizedBox(
                  width: 17.0,
                  height: 17.0,
                  child: SvgPicture.string(
                    '<svg viewBox="846.6 642.3 16.8 16.8" ><path transform="matrix(-0.601815, 0.798635, -0.798635, -0.601815, 863.35, 649.47)" d="M 5.994052410125732 9.5367431640625e-07 L 11.98810482025146 11.9881067276001 L 0 11.98810577392578 L 5.994052410125732 9.5367431640625e-07 Z" fill="#fbcfbc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(size: 9.3, start: 16.3),
                Pin(size: 9.3, start: 47.1),
                child: SvgPicture.string(
                  '<svg viewBox="676.4 402.5 9.3 9.3" ><path transform="matrix(-0.996195, -0.087156, 0.087156, -0.996195, 684.91, 411.79)" d="M 4.281466960906982 0 L 8.562932968139648 8.562932014465332 L 0 8.562932014465332 L 4.281466960906982 0 Z" fill="#e1e2eb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment(1.0, -0.605),
                child: SizedBox(
                  width: 8.0,
                  height: 8.0,
                  child: SvgPicture.string(
                    '<svg viewBox="920.1 413.9 7.6 7.6" ><path transform="matrix(-0.945519, 0.325568, -0.325568, -0.945519, 927.69, 419.57)" d="M 2.999999523162842 0 C 4.656853199005127 0 5.999999046325684 1.343145728111267 5.999999046325684 2.999999523162842 C 5.999999046325684 4.656853199005127 4.656853199005127 5.999999046325684 2.999999523162842 5.999999046325684 C 1.343145728111267 5.999999046325684 0 4.656853199005127 0 2.999999523162842 C 0 1.343145728111267 1.343145728111267 0 2.999999523162842 0 Z" fill="#c6b4fa" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              Pinned.fromPins(
                Pin(size: 7.6, start: 0.0),
                Pin(size: 7.6, end: 41.3),
                child: SvgPicture.string(
                  '<svg viewBox="660.0 610.1 7.6 7.6" ><path transform="matrix(-0.945519, 0.325568, -0.325568, -0.945519, 667.66, 615.77)" d="M 2.999999523162842 0 C 4.656853199005127 0 5.999999046325684 1.343145728111267 5.999999046325684 2.999999523162842 C 5.999999046325684 4.656853199005127 4.656853199005127 5.999999046325684 2.999999523162842 5.999999046325684 C 1.343145728111267 5.999999046325684 0 4.656853199005127 0 2.999999523162842 C 0 1.343145728111267 1.343145728111267 0 2.999999523162842 0 Z" fill="#c6b4fa" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromPins(
                Pin(size: 9.3, end: 6.7),
                Pin(size: 9.3, middle: 0.584),
                child: SvgPicture.string(
                  '<svg viewBox="911.7 527.3 9.3 9.3" ><path transform="matrix(-0.996195, -0.087156, 0.087156, -0.996195, 920.25, 536.58)" d="M 4.281466960906982 0 L 8.562932968139648 8.562932014465332 L 1.06581410364015e-14 8.562932014465332 L 4.281466960906982 0 Z" fill="#e1e2eb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: 215.0,
          height: 41.0,
          child: Transform.rotate(
            angle: 0.0,
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 33,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Nado ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'Express',
                    style: TextStyle(
                      color: const Color(0xffff0000),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
        ),
      ),
    ],
  )
 */
