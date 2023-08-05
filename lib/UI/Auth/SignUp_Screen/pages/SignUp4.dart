// // ignore: file_names
// // ignore_for_file: file_names, non_constant_identifier_names
// import 'dart:io';
//
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:thementr/App/app.dart';
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
// import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp5.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp8.dart';
// import '../../../../core/theme/theme_constants.dart';
// import '../../Login_screen/pages/Login_Page.dart';
//
// class SignUp4 extends StatefulWidget {
//   @override
//   _SignUp4State createState() => _SignUp4State();
// }
//
//
// class _SignUp4State extends State<SignUp4> with WidgetsBindingObserver {
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
//
//
//   @override
//   void initState() {
//     bloc2.add(ChangeInterestValue((b) => b..value=InterestArea_List[0]));
//     bloc2.add(ChangeRoleValue((b) => b..value=Role_List[0]));
//     super.initState();
//
//   }
//   List<String> Role_List = ["Mentee","Mentor"];
//   List<String> InterestArea_List = ["Health Science","Technology"];
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     TextTheme _TextTheme = Theme.of(context).textTheme;
//     ColorScheme ColorS = Theme.of(context).colorScheme;
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
//                                 fontSize: 32.sp,
//                                   color: Color(0xff015595)
//                               ),
//                             ),
//                           ),
//                         ),
//
//                         Container(
//                           child: Column(
//                             children: [
//
//                               Row(
//                                 children: [
//                                   Container(
//                                     margin: EdgeInsets.only(left: 18.w,right: 9.w,top: 50.h),
//                                     child:  Text(
//                                       'Choose Category',
//                                       style: Font1.copyWith(
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                           height: 1.2.h
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 margin: EdgeInsets.only(top: 12.h,bottom: 28.h),
//                                 child: DropdownButtonHideUnderline(
//                                   child: DropdownButton2(
//                                     isExpanded: true,
//                                     items: Role_List
//                                         .map((item) => DropdownMenuItem<String>(
//                                         value: item,
//                                         child:
//                                         //state.EventCateogorySuccess! && !Diditonce2?
//                                         Text(
//                                           item,
//                                           style:Font1.copyWith(
//                                             fontSize: 16.sp,
//                                             fontWeight: FontWeight.w500,
//                                             color: Color(0xff2B2B2B)
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                         )
//                                       //:Text("")
//                                     ))
//                                         .toList(),
//                                     value: state.SelectedRoleValue!.isNotEmpty? state.SelectedRoleValue:null,
//                                     onChanged: (value) {
//                                       bloc2.add(ChangeRoleValue((b) => b..value=value as String));
//                                     },
//                                     icon:  Icon(
//                                       Icons.keyboard_arrow_down,
//                                       size: 20.w,
//                                       color: Color(0xff292D32),
//                                     ),
//                                     iconSize: 20.w,
//                                     iconEnabledColor: Colors.yellow,
//                                     iconDisabledColor: Colors.grey,
//                                     buttonHeight:44.h,
//                                     buttonWidth:  396.w,
//                                     buttonPadding:  EdgeInsets.only(left: 14.w, right: 14.w),
//                                     buttonDecoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(4.r),
//                                       border: Border.all(
//                                         color: Color(0xff2B2B2B),
//                                       ),
//                                       color: Colors.white,
//                                     ),
//                                     buttonElevation: 2,
//                                     itemHeight: 50.h,
//                                     dropdownMaxHeight: 170.h,
//                                     dropdownWidth:396.w,
//                                     dropdownDecoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(4.r),
//                                       color: Colors.white
//                                     ),
//                                     dropdownElevation: 8,
//                                     scrollbarRadius:  Radius.circular(2.r),
//                                     scrollbarThickness: 6,
//                                     scrollbarAlwaysShow: false,
//                                   ),
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Container(
//                                     margin: EdgeInsets.only(left: 18.w,right: 9.w),
//                                     child:  Text(
//                                       'Area of Interest',
//                                       style: Font1.copyWith(
//                                           fontSize: 16.sp,
//                                           fontWeight: FontWeight.w400,
//                                           height: 1.2.h
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 margin: EdgeInsets.only(top: 12.h),
//                                 child: DropdownButtonHideUnderline(
//                                   child: DropdownButton2(
//                                     isExpanded: true,
//                                     items: InterestArea_List
//                                         .map((item) => DropdownMenuItem<String>(
//                                         value: item,
//                                         child:
//                                         //state.EventCateogorySuccess! && !Diditonce2?
//                                         Text(
//                                           item,
//                                           style:Font1.copyWith(
//                                               fontSize: 16.sp,
//                                               fontWeight: FontWeight.w500,
//                                               color: Color(0xff2B2B2B)
//                                           ),
//                                           overflow: TextOverflow.ellipsis,
//                                         )
//                                       //:Text("")
//                                     ))
//                                         .toList(),
//                                     value: state.SelectedInterestValue!.isNotEmpty? state.SelectedInterestValue:null,
//                                     onChanged: (value) {
//                                       bloc2.add(ChangeInterestValue((b) => b..value=value as String));
//                                     },
//                                     icon:  Icon(
//                                       Icons.keyboard_arrow_down,
//                                       size: 20.w,
//                                       color: Color(0xff292D32),
//                                     ),
//
//                                     iconSize: 20.w,
//                                     iconEnabledColor: Colors.yellow,
//                                     iconDisabledColor: Colors.grey,
//                                     buttonHeight:44.h,
//                                     buttonWidth:  396.w,
//                                     buttonPadding:  EdgeInsets.only(left: 14.w, right: 14.w),
//                                     buttonDecoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(4.r),
//                                       border: Border.all(
//                                         color: Color(0xff2B2B2B),
//                                       ),
//                                       color: Colors.white,
//                                     ),
//                                     buttonElevation: 2,
//                                     itemHeight: 50.h,
//                                     dropdownMaxHeight: 170.h,
//                                     dropdownWidth:396.w,
//                                     dropdownDecoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(4.r),
//                                         color: Colors.white
//                                     ),
//                                     dropdownElevation: 8,
//                                     scrollbarRadius:  Radius.circular(2.r),
//                                     scrollbarThickness: 6,
//                                     scrollbarAlwaysShow: false,
//                                   ),
//                                 ),
//                               ),
//
//
//
//                               Container(
//                                 margin: EdgeInsets.only(top: 22.h),
//                                 child: CustomButton(
//                                   onPressed: () async {
//
//                                     if (state.SelectedRoleValue=="Mentor")
//                                     WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => SignUp8(),
//                                       ),
//                                     ));
//                                     else{
//                                       WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => SignUp5(),
//                                         ),
//                                       ));
//                                     }
//                                     // if (state.Pageindex==2){
//                                     //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                     //     context,
//                                     //     MaterialPageRoute(
//                                     //       builder: (context) => Login(),
//                                     //     ),
//                                     //   ));
//                                     // }
//                                     // if (state.Pageindex! != 2){
//                                     //   _SliderBloc.add(ChangePageIndex(((b) => b..index = state.Pageindex! +1)));
//                                     //   _pageController.animateToPage(
//                                     //     state.Pageindex ! + 1,
//                                     //     duration: Duration(milliseconds: 700),
//                                     //     curve: Curves.easeIn,
//                                     //   );
//                                     // }
//
//
//
//                                     // bool result =await InternetConnectionChecker().hasConnection;
//                                     // if (result == true) {
//                                     //   // if (_formkey1.currentState! .validate()) {
//                                     //   //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                     //   //     context,
//                                     //   //     MaterialPageRoute(
//                                     //   //       builder: (context) => Login2(Email: _EmailController.text,),
//                                     //   //     ),
//                                     //   //   ));
//                                     //   // }
//                                     // } else {
//                                     //   AnimatedSnackBar.material(
//                                     //     'Check your internet connection',
//                                     //     duration: Duration(seconds: 2),
//                                     //     type: AnimatedSnackBarType.error,
//                                     //   ).show(
//                                     //     context,
//                                     //   );
//                                     // }
//                                   },
//                                   ButtonText: 'Continue',
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
