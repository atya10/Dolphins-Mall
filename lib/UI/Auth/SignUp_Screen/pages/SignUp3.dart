// // ignore: file_names
// // ignore_for_file: file_names, non_constant_identifier_names
// import 'dart:io';
// import 'package:dolphins_mall/App/app.dart';
// import 'package:dolphins_mall/Core/Functions/Fucntions.dart';
// import 'package:dolphins_mall/Core/widgets/CustomButton.dart';
// import 'package:dolphins_mall/Core/widgets/Custom_Textfield.dart';
// import 'package:dolphins_mall/Data/prefs_helper/prefs_helper.dart';
// import 'package:dolphins_mall/Injection.dart';
// import 'package:dolphins_mall/UI/Auth/SignUp_Screen/bloc/SignUp_bloc.dart';
// import 'package:dolphins_mall/UI/Auth/SignUp_Screen/bloc/SignUp_event.dart';
// import 'package:dolphins_mall/UI/Auth/SignUp_Screen/bloc/SignUp_state.dart';
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
// import 'package:dolphins_mall/Data/prefs_helper/prefs_helper.dart';
// import 'package:dolphins_mall/UI/Auth/SignUp_Screen/pages/SignUp4.dart';
// import '../../../../core/theme/theme_constants.dart';
// import '../../Login_screen/pages/Login_Page.dart';
//
// class SignUp3 extends StatefulWidget {
//   @override
//   _SignUp3State createState() => _SignUp3State();
// }
//
// class _SignUp3State extends State<SignUp3> with WidgetsBindingObserver {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final Pref = PrefsHelper();
//   late FocusNode FoucesNodePass;
//   late FocusNode FoucesNodeEmail;
//   late FocusNode FoucesNodeConfirm;
//
//   bool? DiditOnce = true;
//   bool DIALOG = false;
//   double? lat;
//   double? lng;
//   String? fcmToken;
//
//   final bloc2 = sl<SignUpBloc>();
//   final _formkey1 = GlobalKey<FormState>();
//   final _formkey2 = GlobalKey<FormState>();
//   final _formkey3 = GlobalKey<FormState>();
//   final TextEditingController _EmailController = TextEditingController();
//   final TextEditingController _PassController = TextEditingController();
//   final TextEditingController _ConfirmpassController = TextEditingController();
//
//   final PasswordValidation =
//   RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
//   final nameValidation = RegExp(r"^[\p{Letter}\p{Number}]+$");
//   final emailvalidaition = RegExp(
//       r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0"
//       r"-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u0"
//       r"0A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)"
//       r"+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDC"
//       r"F\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(("
//       r"(\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(("
//       r"[a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]"
//       r")*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-"
//       r"z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0"
//       r"-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");
//
//   //                 //(?=.*[A-Z])       // should contain at least one upper case
//   //                                                     //   (?=.*[a-z])       // should contain at least one lower case
//   //                                                     //   (?=.*?[0-9])      // should contain at least one digit
//   //                                                     //   (?=.*?[!@#\$&*~]) // should contain at least one Special character
//   //                                                     //   .{8,}             // Must be at least 8 characters in length
//
//   final AtleastOneUperCase = RegExp("(?=.*[A-Z])");
//   final containAtleastOneLowercase = RegExp("(?=.*[a-z])");
//   final shouldContainAtleastOneDigit = RegExp("(?=.*?[0-9])");
//   final least8CharactersInLength = RegExp(".{8,}");
//
//   // Future<void> GetlatAndLng() async {
//   //   lat = await Pref.Getlat();
//   //   lng = await Pref.GetLng();
//   //   print(" User lat and lng ??! : $lat , $lng ");
//   // }
//
//   @override
//   void initState() {
//     FoucesNodePass = FocusNode();
//     FoucesNodeEmail = FocusNode();
//     FoucesNodeConfirm = FocusNode();
//     super.initState();
//
//     // _EmailController.addListener(() {
//     //   if (_EmailController.text.isEmpty || _PassController.text.isEmpty || _ConfirmpassController.text.isEmpty ){
//     //     bloc2.add(ChangeSelected((b) => b..status = false));
//     //   }else{
//     //     bloc2.add(ChangeSelected((b) => b..status = true));
//     //   }
//     // });
// //
// //     _EmailController.addListener(() {
// //       if (_EmailController.text.isEmpty){
// //         bloc2.add(ChangeSelected((b) => b..status = false));
// //       }
// //     });
// //     _PassController.addListener(() {
// //       if (_PassController.text.isEmpty){
// //         bloc2.add(ChangeSelected((b) => b..status = false));
// //       }
// //     });
// //
// //
// //     _ConfirmpassController.addListener(() {
// //       if (_ConfirmpassController.text.isEmpty ){
// //         bloc2.add(ChangeSelected((b) => b..status = false));
// //       }
// //     });
//
//
//
//
//     //Selected
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     FoucesNodeEmail.dispose();
//     FoucesNodePass.dispose();
//     _PassController.dispose();
//     _EmailController.dispose();
//     _ConfirmpassController.dispose();
//     FoucesNodeConfirm.dispose();
//   }
//  // EmailAuth emailAuth =  new EmailAuth(sessionName: "Sample session");
//   bool Diditonce = false;
//   bool Selected = false;
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
//           // if (state.success == true && Diditonce == true) {
//           //     if (state.Checkemail!.msg == "success") {
//           //       WidgetsBinding.instance.addPostFrameCallback((_) {
//           //         UsersData Users = UsersData(
//           //             Email: _EmailController.text.toLowerCase(),
//           //             Pass: _PassController.text,
//           //             ConfirmPass: _ConfirmpassController.text);
//           //         Navigator.push(
//           //           context,
//           //           MaterialPageRoute(
//           //             builder: (context) => Onboarding2(
//           //               //  Onboarding1(
//           //               Users: Users,
//           //             ),
//           //           ),
//           //         );
//           //       });
//           //     }
//           //     else if ( state.Checkemail!.msg=="email already has been Taken"){
//           //       WidgetsBinding.instance.addPostFrameCallback((_) {
//           //         CommingSoonPopup(context, "Email already has been taken","Ok",17,(){  Navigator.pop(context);});
//           //       });
//           //     }
//           //   Diditonce = false;
//           // }
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
//                               'dolphins_mall',
//                               style: Font1.copyWith(
//                                 fontSize: 32.sp,
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
//                                 margin: EdgeInsets.only(top: 38.h,left: 18.w,bottom: 14.h),
//                                 child:  Container(
//                                   child: Text(
//                                     'Enter code',
//                                     textAlign: TextAlign.left,
//                                     style: Font1.copyWith(
//                                         fontSize: 28.sp,
//                                         fontWeight: FontWeight.w600
//                                     ),
//                                   ),
//                                 ),
//
//                               ),
//                               Container(
//                                 margin: EdgeInsets.only(left: 18.w,right: 9.w),
//                                 child:  Text(
//                                   'A verification code has been sent to your mail. Input the code',
//                                   style: Font1.copyWith(
//                                       fontSize: 16.sp,
//                                       fontWeight: FontWeight.w400,
//                                     height: 1.5.h
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 240.w,
//                                 child: Form(
//                                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                                   key: _formkey1,
//                                   child:
//
//                                   textfeild(
//                                     type:  TextInputType.number,
//                                     textAlign: TextAlign.center,
//                                     FontSize: 20,
//                                     hidePass: false,
//                                     FillColor: Colors.transparent,
//                                     width: 240,
//                                     Hieght: 76,
//                                     topContentPadding: 0,
//                                     MaxLines: 1,
//                                     Margin: 0,
//                                     FoucesNode:FoucesNodeEmail,
//                                     Onsubmitted: (String){},
//                                     TextInputaction: TextInputAction.done,
//                                     Controller: _EmailController, Hint_Text: "Input here",
//                                     Onchanged:(String){},
//                                     validator: MultiValidator([
//                                       RequiredValidator(errorText: "Required"),
//                                     ]),
//                                     IconClicked: () {},
//                                     obscureText:true, LeftContentPadding: 5, HintText_Style: Font1.copyWith(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 16.sp,
//                                   ), BorderColor: Color(0xff077BCD), BorderRaduis: 5,
//                                   ),),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.only(top: 22.h),
//                                 child: CustomButton(
//                                   onPressed: () async {
//                                     if (_formkey1.currentState!.validate())
//                                     WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => SignUp4(),
//                                       ),
//                                     ));
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
