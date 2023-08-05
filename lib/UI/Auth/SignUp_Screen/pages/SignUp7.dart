// // ignore: file_names
// // ignore_for_file: file_names, non_constant_identifier_names
// import 'dart:io';
//
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
// import 'package:dolphins_mall/UI/Auth/SignUp_Screen/pages/SignUp8.dart';
// import '../../../../core/theme/theme_constants.dart';
// import '../../Login_screen/pages/Login_Page.dart';
//
// class SignUp7 extends StatefulWidget {
//   @override
//   _SignUp7State createState() => _SignUp7State();
// }
//
// class _SignUp7State extends State<SignUp7> with WidgetsBindingObserver {
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
//
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
//                           padding: EdgeInsets.only(top: 50.h),
//                           child: Center(
//                             child: Text(
//                               'Mentor’s Main Goal',
//                               style: Font1.copyWith(
//                                 fontSize: 20.sp,
//                                 fontWeight: FontWeight.w600
//                               ),
//                             ),
//                           ),
//                         ),
//                       Stack(
//                         children: [
//                           Container(
//                             margin: EdgeInsets.only(top: 20.h),
//                             child: Form(
//                               autovalidateMode: AutovalidateMode.onUserInteraction,
//                               key: _formkey1,
//                               child:
//                               textfeild(
//                                 type:  TextInputType.text,
//                                 BorderRaduis: 10,
//                                 BorderColor: Colors.transparent,
//                                 HintText_Style: Font1.copyWith(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 16.sp,
//                                     color: Color(0xff646464)
//                                 ),
//                                 LeftContentPadding: 10,
//                                 textAlign: TextAlign.left,
//                                 FontSize: 20,
//                                 hidePass: false,
//                                 FillColor: Color(0xffF5F5F5),
//                                 width: 396,
//                                 Hieght: 120,
//                                 topContentPadding: 10,
//                                 MaxLines: 12,
//                                 Margin: 0,
//                                 FoucesNode:FoucesNodeEmail,
//                                 Onsubmitted: (String){},
//                                 TextInputaction: TextInputAction.next,
//                                 Controller: _EmailController, Hint_Text: "Enter mentor’s Goal",
//                                 Onchanged:(String){
//                                   bloc2.add(ChangeCharLength((b) => b..value= String.length));
//                                 },
//                                 validator: MultiValidator([
//                                   MaxLengthValidator(100, errorText: "Max Length Reached!"),
//                                   RequiredValidator(errorText: "Required"),
//                                 ]),
//                                 IconClicked: () {
//
//
//
//                                 },obscureText:true,
//                               ),),
//                           ),
//
//                           Positioned(
//                             left: 340.w,
//                               top: 80.h,
//                               child: Text("${state.CharLength}/100")
//                           )
//
//                         ],
//                       ),
//                         Container(
//                           child: Form(
//                             autovalidateMode: AutovalidateMode.onUserInteraction,
//                             key: _formkey2,
//                             child:
//                             textfeild(
//                               BorderRaduis: 10,
//                               BorderColor: Colors.transparent,
//                               HintText_Style: Font1.copyWith(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16.sp,
//                                   color: Color(0xff646464)
//                               ),
//                               LeftContentPadding: 10,
//                               textAlign: TextAlign.left,
//                               FontSize: 20,
//                               hidePass: false,
//                               FillColor: Color(0xffF5F5F5),
//                               width: 396,
//                               Hieght: 85,
//                               topContentPadding: 10,
//                               MaxLines: 12,
//                               Margin: 0,
//                               FoucesNode:FoucesNodePass,
//                               Onsubmitted: (String){},
//                               TextInputaction: TextInputAction.next,
//                               Controller: _PassController, Hint_Text: "Describe The Goal",
//                               Onchanged:(String){},
//                               validator: MultiValidator([
//                                 RequiredValidator(errorText: "Required"),
//                               ]),
//                               IconClicked: () {
//
//
//
//                               },obscureText:true, type:  TextInputType.text,
//                             ),),
//                         ),
//                         Container(
//                           margin: EdgeInsets.only(top: 22.h),
//                           child: CustomButton(
//                             onPressed: () async {
//                                 WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => Container(),
//                                   ),
//                                 ));
//                               // if (state.Pageindex==2){
//                               //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                               //     context,
//                               //     MaterialPageRoute(
//                               //       builder: (context) => Login(),
//                               //     ),
//                               //   ));
//                               // }
//                               // if (state.Pageindex! != 2){
//                               //   _SliderBloc.add(ChangePageIndex(((b) => b..index = state.Pageindex! +1)));
//                               //   _pageController.animateToPage(
//                               //     state.Pageindex ! + 1,
//                               //     duration: Duration(milliseconds: 700),
//                               //     curve: Curves.easeIn,
//                               //   );
//                               // }
//
//
//
//                               // bool result =await InternetConnectionChecker().hasConnection;
//                               // if (result == true) {
//                               //   // if (_formkey1.currentState! .validate()) {
//                               //   //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                               //   //     context,
//                               //   //     MaterialPageRoute(
//                               //   //       builder: (context) => Login2(Email: _EmailController.text,),
//                               //   //     ),
//                               //   //   ));
//                               //   // }
//                               // } else {
//                               //   AnimatedSnackBar.material(
//                               //     'Check your internet connection',
//                               //     duration: Duration(seconds: 2),
//                               //     type: AnimatedSnackBarType.error,
//                               //   ).show(
//                               //     context,
//                               //   );
//                               // }
//                             },
//                             ButtonText: 'Done',
//                             btnColor: Color(0xff015595),
//                             TxtColor: Color(0xffFFFFFF),
//                             SocialName: 'null',
//                             weight: FontWeight.w600,
//                             fontsize: 20.sp,
//                             HeigthBTN: 56.h,
//                             Widthbtn: 393.w, BorderColor:  Color(0xff015595),
//
//                           ),
//                         ),
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
