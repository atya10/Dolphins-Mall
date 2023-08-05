// // ignore: file_names
// // ignore_for_file: file_names, non_constant_identifier_names
// import 'dart:io';
//
// import 'package:thementr/App/app.dart';
// import 'package:thementr/Core/Classes/Classes.dart';
// import 'package:thementr/Core/Functions/Fucntions.dart';
// import 'package:thementr/Core/widgets/CustomButton.dart';
// import 'package:thementr/Core/widgets/Custom_Textfield.dart';
// import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
// import 'package:thementr/Injection.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_bloc.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_event.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_state.dart';
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp10.dart';
// import '../../../../core/theme/theme_constants.dart';
// import '../../Login_screen/pages/Login_Page.dart';
//
// class SignUp9 extends StatefulWidget {
//   @override
//   _SignUp9State createState() => _SignUp9State();
// }
//
// class _SignUp9State extends State<SignUp9> with WidgetsBindingObserver {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final Pref = PrefsHelper();
//
//   bool? DiditOnce = true;
//   bool DIALOG = false;
//   double? lat;
//   double? lng;
//   String? fcmToken;
//
//   final bloc2 = sl<SignUpBloc>();
//   ScrollController scrollController =  ScrollController();
// //Add Hobbles
// // Add Occupation
// // Add Education
// // Add Location
// // Add Birth Date
// // Add Years Of Experience
// // Add Fun Fact
// // Link to work portfolio
//   List<String> Skills_List =[
//     "Add Hobbles",
//     "Add Occupation",
//     "Add Education",
//     "Add Location",
//     "Add Birth Date",
//     "Add Years Of Experience"
//     ,"Add Fun Fact"
//     ,"Link to work portfolio"
//   ];
//   List<String> SkillsImage_List =[
//     "Assets/images/Vector.svg",
//     "Assets/images/Vector2.svg",
//     "Assets/images/Vector3.svg",
//     "Assets/images/Vector4.svg",
//     "Assets/images/Vector6.svg",
//     "Assets/images/Vector11.svg",
//     "Assets/images/Vector12.svg",
//     "Assets/images/location.svg"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return BlocBuilder(
//         bloc: bloc2,
//         builder: (BuildContext context, SignUpState state) {
//
//           return Scaffold(
//               resizeToAvoidBottomInset: false,
//               key: _scaffoldKey,
//               backgroundColor: Colors.white,
//               body: SafeArea(
//                 child:
//                 Stack(children: [
//                   Container(
//                     width: w,
//                     height: h,
//                     child: Column(
//                       children: [
//                         Container(
//                           padding: EdgeInsets.only(top: 136.h),
//                           child: Center(
//                             child: Text(
//                               'TheMentr',
//                               style: Font1.copyWith(
//                                   fontSize: 32.sp,
//                                   color: Color(0xff015595)
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: w,
//                                 margin: EdgeInsets.only(top: 38.h,left: 18.w,bottom: 22.h),
//                                 child:  Container(
//                                   child: Text(
//                                     'Fill all the compulsory information information',
//                                     textAlign: TextAlign.left,
//                                     style: Font1.copyWith(
//                                         fontSize: 16.sp,
//                                         fontWeight: FontWeight.w400,
//                                         color: Colors.black
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: w,
//                                 margin: EdgeInsets.only(top: 22.h,left: 18.w,bottom: 16.h),
//                                 child:  Container(
//                                   child: Text(
//                                     'Mentor’s Information',
//                                     textAlign: TextAlign.left,
//                                     style: Font1.copyWith(
//                                         fontSize: 20.sp,
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.black
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                   width: w,
//                                   height: 473.h,
//                                   margin: EdgeInsets.only(left: 14.w,right: 18.w),
//                                   child:ScrollConfiguration(
//                                     behavior: MyBehavior(),
//                                     child:ListView.separated(
//                                       controller: scrollController,
//                                       shrinkWrap: true,
//                                       padding: EdgeInsets.zero,
//                                       physics: AlwaysScrollableScrollPhysics(),
//                                       scrollDirection: Axis.vertical,
//                                       itemCount: Skills_List.length,
//                                       itemBuilder: (BuildContext context, int index) {
//                                         return
//                                           RemoveHighlight(      InkWell(
//                                             onTap: (){
//                                               WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                   builder: (context) => SignUp10(Skills_List[index]),
//                                                 ),
//                                               ));
//                                            //   bloc2.add(SelectItemInList((b) => b..Index = index));
//                                             },
//                                             child: Container(
//                                               width: 396.w,
//                                               height: 46.h,
//                                               decoration: BoxDecoration(
//                                                 borderRadius : border(25,25,25,25),
//                                                 color :Color(0xffCEEAFF)
//                                               ),
//                                               padding: EdgeInsets.symmetric(horizontal: 12.w),
//                                               child:Container(
//                                                 child: Row(
//                                                   children: [
//                                                     SvgPicture.asset(SkillsImage_List[index]
//                                                       ,color: Color(0xff646464),),
//                                                     SizedBox(width: 15.w,),
//                                                     Container(
//                                                       padding: EdgeInsets.only(top: 5.h),
//                                                       child: Text(
//                                                         Skills_List[index],
//                                                         textAlign: TextAlign.left,
//                                                         style: Font1.copyWith(
//                                                             fontSize: 16.sp,
//                                                             fontWeight: FontWeight.w400,
//                                                             color: Color(0xff646464)
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ));
//                                       }, separatorBuilder: (BuildContext context, int index) {
//                                       return SizedBox(height: 16.h,);
//                                     },
//                                     ),)
//                               ),
//                               // RemoveHighlight(      Center(child: InkWell(
//                               //   onTap: (){
//                               //     scrollController.animateTo(
//                               //       scrollController.position.maxScrollExtent,
//                               //       duration: Duration( milliseconds: 400),
//                               //       curve: Curves.easeIn,
//                               //     );
//                               //   },
//                               //   child: Container(
//                               //     margin: EdgeInsets.only(top: 16.h),
//                               //     child: CircleAvatar(
//                               //       radius: 25.r,
//                               //       backgroundColor: Color(0xff077BCD),
//                               //       child: CircleAvatar(
//                               //         radius: 23.5.r,
//                               //         backgroundColor: Colors.white,
//                               //         child: Icon(
//                               //           Icons.keyboard_arrow_down,
//                               //           color: Colors.black,
//                               //         ),
//                               //       ),
//                               //     ),
//                               //   ),
//                               // )),),
//                               Container(
//                                 margin: EdgeInsets.only(top: 42.h),
//                                 child: CustomButton(
//                                   onPressed: () async {
//                                     WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => Container(),
//                                       ),
//                                     ));
//                                   },
//                                   ButtonText: 'Next',
//                                   btnColor: Color(0xff015595),
//                                   TxtColor: Color(0xffFFFFFF),
//                                   SocialName: 'null',
//                                   weight: FontWeight.w600,
//                                   fontsize: 20.sp,
//                                   HeigthBTN: 56.h,
//                                   Widthbtn: 393.w, BorderColor:  Color(0xff015595),
//
//                                 ),
//                               ),
//
//                             ],
//                           ),
//                         )
//                         // Container(
//                         //   width: w / 1.32,
//                         //   child: AspectRatio(
//                         //     aspectRatio: 50 / 10,
//                         //     //aspect ratio for Image
//                         //     child: SvgPicture.asset(
//                         //         "Assets/images/Logo.svg",
//                         //         fit: BoxFit.fill),
//                         //   ),
//                         // ),
//                         // SizedBox(height: 80.h,),
//
//                         // Container(
//                         //   width: w / 1.4,
//                         //   margin: EdgeInsets.only(top: 45.h),
//                         //   child: AspectRatio(
//                         //     aspectRatio: 50 / 16,
//                         //     //aspect ratio for Image
//                         //     child:
//                         //     Image.asset("Assets/images/image.png" ,  fit: BoxFit.fill),
//                         //   ),
//                         // ),
//
//                         // Container(
//                         //   width: w / 1.2,
//                         //   margin: EdgeInsets.only(top: 38.h),
//                         //   child: Text(
//                         //     '   Be around,              Find your bubble!',
//                         //     textAlign: TextAlign.center,
//                         //     style: TextStyle(
//                         //         color:
//                         //             Color.fromRGBO(255, 255, 255, 1),
//                         //         fontFamily: 'Red Hat Display',
//                         //         fontSize: 28.sp,
//                         //         letterSpacing: 0.2,
//                         //         fontStyle: FontStyle.italic,
//                         //         fontWeight: FontWeight.w800,
//                         //         height: 0.8.h),
//                         //   ),
//                         // ),
//                         // Form(
//                         //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                         //   key: _formkey1,
//                         //   child:
//                         //   textfeild(
//                         //     FontSize: 20,
//                         //     hidePass: false,
//                         //     FillColor: Colors.white,
//                         //     weidth: 1.32,
//                         //     topContentPadding: 0,
//                         //     MaxLines: 1,
//                         //     Height: 10,
//                         //     Margin: 25,
//                         //     FoucesNode:_EmailFocusNode,
//                         //     Onsubmitted: (String){},
//                         //     TextInputaction: TextInputAction.next,
//                         //     Controller: _FnameController, Hint_Text: "Email",
//                         //     Onchanged:(String){},
//                         //     validator: MultiValidator([
//                         //       RequiredValidator(errorText: "Required"),
//                         //       EmailValidator(errorText: "Thats not an email"),
//                         //     ]),
//                         //   ),),
//                         // Container(
//                         //   width: w/1.35,
//                         //   margin: EdgeInsets.only(bottom: 10.h,top: 20.h),
//                         //   child: InternationalPhoneNumberInput(
//                         //     onInputChanged: (PhoneNumber number) {
//                         //       print(number.phoneNumber);
//                         //       numberr = number.phoneNumber.toString();
//                         //     },
//                         //     onInputValidated: (bool value) {
//                         //       print(value);
//                         //     },
//                         //     selectorConfig: SelectorConfig(
//                         //       selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//                         //     ),
//                         //     ignoreBlank: false,
//                         //     autoValidateMode: AutovalidateMode.disabled,
//                         //     selectorTextStyle: TextStyle(color: Color(0xffEAEAEA)),
//                         //     initialValue: number,
//                         //     textFieldController: controller,
//                         //     formatInput: false,
//                         //     keyboardType:  TextInputType.numberWithOptions(signed: true, decimal: true),
//                         //
//                         //     onSaved: (PhoneNumber number) {
//                         //       print('On Saved: $number');
//                         //     },
//                         //     hintText: "Phone number",
//                         //   ),
//                         // ),
//
//                         //
//                         //  CustomButton(
//                         //    onPressed: ()async{
//                         //    // if (numberr.isNotEmpty)
//                         //    //     WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                         //    //           context,
//                         //    //           MaterialPageRoute(
//                         //    //             builder: (context) => OtpScreen(number: numberr,),
//                         //    //           ),
//                         //    //         ));
//                         //   //     Verify();
//                         //      bool result =await InternetConnectionChecker().hasConnection;
//                         //      if (result == true) {
//                         //        // if (_formkey1.currentState! .validate()) {
//                         //        //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                         //        //     context,
//                         //        //     MaterialPageRoute(
//                         //        //       builder: (context) => Login2(Email: _FnameController.text,),
//                         //        //     ),
//                         //        //   ));
//                         //        // }
//                         //      } else {
//                         //        AnimatedSnackBar.material(
//                         //          'Check your internet connection',
//                         //          duration: Duration(seconds: 2),
//                         //          type: AnimatedSnackBarType.error,
//                         //        ).show(
//                         //          context,
//                         //        );
//                         //      }
//                         //    },
//                         //    ButtonText: 'Continue',
//                         //    btnColor: Color(0xffCF6D38),
//                         //    TxtColor: Color(0xffFFFFFF),
//                         //    SocialName: 'null',
//                         //    weight: FontWeight.w600,
//                         //    fontsize: 13.86.sp,
//                         //  ),
//                         //  Container(
//                         //    width: w,
//                         //    margin:  EdgeInsets.only(top: 8.h, bottom: 8.h),
//                         //    child: Center(
//                         //        child: Text(
//                         //          'or',
//                         //          textAlign: TextAlign.center,
//                         //          style: TextStyle(
//                         //              color:  Colors.white,
//                         //              fontFamily: 'Red Hat Text',
//                         //              fontSize: 16.sp,
//                         //              letterSpacing: 0,
//                         //              fontWeight: FontWeight.w600,
//                         //              height: 1.1875.h),
//                         //        )),
//                         //  ),
//                         //  // CustomButton(
//                         //  //   onPressed: ()async{ signInWithFacebook(); },
//                         //  //   ButtonText: 'Continue with Facebook',
//                         //  //   btnColor: Color(0xff1877F2),
//                         //  //   TxtColor: Colors.white,
//                         //  //   SocialName: 'signInWithFacebook',
//                         //  //   SocialImage: "Assets/images/path14.svg",
//                         //  //   FontFamilySocial: 'Helvetica',
//                         //  //   weight: FontWeight.w700,
//                         //  //   fontsize: 13.86.sp,
//                         //  // ),
//                         //  // SizedBox(height: 7.h,),
//                         //  // CustomButton(
//                         //  //   onPressed: ()async{
//                         //  //  //   signInWithGoogle(context: context);
//                         //  //     },
//                         //  //   ButtonText: 'Continue with Google',
//                         //  //   btnColor: Colors.white,
//                         //  //   TxtColor: Color.fromRGBO(0, 0, 0, 0.5400000214576721),
//                         //  //   SocialName: 'signInWithGoogle',
//                         //  //   SocialImage:"Assets/images/Google Logo.svg" ,
//                         //  //   FontFamilySocial: 'Roboto Medium',
//                         //  //   weight: FontWeight.w500,
//                         //  //   fontsize: 13.86.sp,
//                         //  // ),
//                         //
//                         //
//                         //  SizedBox(height: 7.h,),
//                         // // Platform.isIOS?
//                         // //  CustomButton(
//                         // //    onPressed: ()async{   signInWithApple();},
//                         // //    ButtonText: 'Continue with Apple',
//                         // //    btnColor: Colors.black,
//                         // //    TxtColor: Colors.white,
//                         // //    SocialName: 'SigninWIthApple',
//                         // //    SocialImage: "Assets/images/path4.svg",
//                         // //    FontFamilySocial: 'Roboto',
//                         // //    weight: FontWeight.w500,
//                         // //    fontsize: 13.86.sp,
//                         // //  )
//                         // //       :Container(),
//                         //  //    Container(
//                         //  //      width: w/1.4,
//                         //  //      margin: EdgeInsets.only(top:!Platform.isIOS?40.h: 10.h),
//                         //  //      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam scelerisque donec varius.',
//                         //  //        textAlign: TextAlign.center, style: TextStyle(
//                         //  //       color: Color(0xffEAEAEA),
//                         //  //       fontFamily: 'Red Hat Text',
//                         //  //       fontSize: 11.sp,
//                         //  //       fontWeight: FontWeight.w300,
//                         //  //       height: 1.3636363636363635.h
//                         //  // ),),
//                         //  //    )
//                         //  Container(
//                         //    margin: EdgeInsets.only(top: h/50),
//                         //    child: InkWell(
//                         //      onTap: () async {
//                         //        bool result = await InternetConnectionChecker().hasConnection;
//                         //        if (result == true) {
//                         //          WidgetsBinding.instance
//                         //              .addPostFrameCallback(
//                         //                  (_) => Navigator.push(
//                         //                context,
//                         //                MaterialPageRoute(
//                         //                  builder: (context) =>
//                         //                      SignUp(),
//                         //                ),
//                         //              ));
//                         //        } else {
//                         //          AnimatedSnackBar.material(
//                         //            'Check your internet connection',
//                         //            duration: Duration(seconds: 2),
//                         //            type: AnimatedSnackBarType.error,
//                         //          ).show(
//                         //            context,
//                         //          );
//                         //          // CommingSoonPopup(context,
//                         //          //     "Check your internet connection then try again", "Ok", 17);
//                         //        }
//                         //      },
//                         //      child: Column(
//                         //        mainAxisAlignment:
//                         //        MainAxisAlignment.start,
//                         //        children: [
//                         //          Text('Don’t have an account?',
//                         //              textAlign: TextAlign.center,
//                         //              style: _TextTheme.headline1!
//                         //                  .copyWith(
//                         //                  fontSize: 14.sp,
//                         //                  letterSpacing: 0.3,
//                         //                  fontWeight:
//                         //                  FontWeight.w300,
//                         //                  height: 1)),
//                         //          Text("Sign up",
//                         //              textAlign: TextAlign.center,
//                         //              style: _TextTheme.headline1!
//                         //                  .copyWith(
//                         //                  decoration: TextDecoration
//                         //                      .underline,
//                         //                  fontSize: 9.sp,
//                         //                  letterSpacing: 0.3,
//                         //                  fontWeight:
//                         //                  FontWeight.w500,
//                         //                  height: 1)),
//                         //        ],
//                         //      ),
//                         //    ),
//                         //  ),
//                       ],
//                     ),
//                   ),
//                   state.isLoading == true
//                       ? Center(child: listLoader(context: context))
//                       : Container(),
//
//                 ]),
//               ));
//         });
//   }
// }
