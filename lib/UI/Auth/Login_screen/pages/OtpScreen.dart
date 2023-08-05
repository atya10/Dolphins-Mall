// import 'package:animated_snack_bar/animated_snack_bar.dart';
// import 'package:bubbles/Data/prefs_helper/iprefs_helper.dart';
// import 'package:bubbles/Injection.dart';
// import 'package:bubbles/UI/NavigatorTopBar_Screen/pages/NavigatorTopBar.dart';
// import 'package:bubbles/UI/Onboarding/Login_screen/bloc/ImageChat_bloc.dart';
// import 'package:bubbles/UI/Onboarding/Login_screen/bloc/ImageChat_event.dart';
// import 'package:bubbles/UI/Onboarding/Login_screen/bloc/ImageChat_state.dart';
// import 'package:bubbles/UI/Onboarding/SignUp_Screen/pages/Onboarding2.dart';
// import 'package:bubbles/core/Classes/Classes.dart';
// import 'package:bubbles/core/Functions/Fucntions.dart';
// import 'package:bubbles/core/widgets/BackTextButton.dart';
// import 'package:bubbles/core/widgets/CustomButton.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sms_autofill/sms_autofill.dart';
// import 'package:firebase_messaging/firebase_messaging.dart' as fire;
// class OtpScreen extends StatefulWidget {
//    OtpScreen({Key? key,required this.number}) : super(key: key);
// String number = '';
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen>{
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final _Loginbloc = sl<loginBloc>();
//   FirebaseAuth auth = FirebaseAuth.instance;
//   String Fcmtoken = "";
//   String verificationId = "";
//   String _code="";
//   bool DiDitOnce = false;
//   final pref = sl<IPrefsHelper>();
//
//
//   @override
//   void dispose() {
//     SmsAutoFill().unregisterListener();
//     super.dispose();
//   }
//
//   void ListenForCode(){
//     print(" SmsAutoFill");
//      SmsAutoFill().listenForCode;
//   }
//
//   void getFcm() async{
//     fire.FirebaseMessaging.instance.getToken().then((FcmTOken) {
//       print(FcmTOken);
//       return Fcmtoken = FcmTOken!;
//     });
//     print(Fcmtoken);
//     print("Fcmtoken");
//   }
//
//   @override
//   void initState() {
//     getFcm();
//     Verify();
//    ListenForCode();
//     super.initState();
//   }
//
//   Future<void> Verify() async {
//     // FirebaseAuth.instance.setSettings(
//     //   appVerificationDisabledForTesting: false,
//     // );
//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: widget.number,
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         print("token : ${credential.token}");
//         print("Completed");
//
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         if (e.code == 'invalid-phone-number') {
//           print('The provided phone number is not valid.');
//         }
//       },
//       timeout: const Duration(seconds: 20),
//       codeSent: (String verificationId, int? resendToken) async {
//         print("code sent");
//         print(verificationId);
//         this.verificationId = verificationId;
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {
//         print("Timeout");
//       },
//     ).then((value){
//       print("value}");
//     });
//   }
//
//   Future<void> SetNotFirstTime() async {
//     await pref.SetisFirstTimeLogin();
//   }
//
//   Future<void> SetToken(String Token) async {
//     await pref.SetToken(Token);
//   }
//
//   Future<void> VerifyOtp(String code)async{
//   try {
//     PhoneAuthCredential credential =  PhoneAuthProvider.credential(
//         verificationId: verificationId, smsCode: code);
//
//     await auth.signInWithCredential(credential);
//     await auth.signOut();
//
//    _Loginbloc.add(LoginWithPhone((b) => b
//      ..Phone = widget.number
//        ..fcmToken = Fcmtoken
//    ));
//   ScaffoldMessenger.of(context).showSnackBar(
//     const SnackBar(
//         backgroundColor: Color(0xffCF6D38),
//         content: Text("Verified Successfully")),
//   );
//
//
//   }catch(e){
//     print(e);
//     ScaffoldMessenger.of(context).showSnackBar(
//        SnackBar(
//         backgroundColor: Color(0xffCF6D38),
//           content: Text(e.toString())),
//     );
//    }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     TextTheme _TextTheme = Theme.of(context).textTheme;
//     ColorScheme ColorS = Theme.of(context).colorScheme;
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return BlocBuilder(
//         bloc: _Loginbloc,
//         builder: (BuildContext context, loginState state) {
//
//           if (state.success! && DiDitOnce ) {
//             print("GOT INSIDE");
//             SetNotFirstTime();
//
//             if (state.data!.user!.data!.serial == null) {
//               SetToken(state.data!.user!.token!);
//               UsersData Users = UsersData();
//
//               WidgetsBinding.instance
//                   .addPostFrameCallback((_) => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Onboarding2(
//                     Users: Users,
//                   ),
//                 ),
//               ));
//             } else {
//               pref.saveUser(
//                 state.data!.user!,
//                 state.data!.user!.token!,
//                 true,
//               );
//               AnimatedSnackBar.material(
//                 'Logged in Successfully',
//                 duration: Duration(seconds: 2),
//                 type: AnimatedSnackBarType.success,
//               ).show(
//                 context,
//               );
//               WidgetsBinding.instance
//                   .addPostFrameCallback((_) => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       NavigatorTopBar(
//                     GotToHomeAndOpenPanel: false,
//                   ),
//                 ),
//               ));
//             }
//             DiDitOnce = false;
//           }
//
//           return Scaffold(
//             resizeToAvoidBottomInset: false,
//             key: _scaffoldKey,
//             backgroundColor: Color(0xff942657),
//             body: SafeArea(
//               child: Container(
//                 padding: EdgeInsets.only(top: 40.h),
//                 width: w,
//                 child: Column(
//                   children: [
//                     Container(
//                       width: w / 1.32,
//                       child: AspectRatio(
//                         aspectRatio: 50 / 10,
//                         //aspect ratio for Image
//                         child: SvgPicture.asset(
//                             "Assets/images/Logo.svg",
//                             fit: BoxFit.fill),
//                       ),
//                     ),
//                     Container(
//                       width: w/1.3,
//                       margin: EdgeInsets.only(top: 36.h),
//                       child:  RichText(
//                           textAlign: TextAlign.left,
//                           text: TextSpan(
//                             style: TextStyle(
//                                 color: Color(0xffEAEAEA),
//                                 fontFamily: 'Red Hat Text',
//                                 wordSpacing: 0.5,
//                                 letterSpacing: 0.8,
//                                 fontSize: 15.sp,
//                                 fontWeight: FontWeight.w300,
//                                 height: 1.5.h
//                             ),
//                             children: [
//                               TextSpan(
//                                 text: 'For safety, we will first ask you to verify your phone number. An SMS with a code that ',
//                               ),
//                               TextSpan(
//                                 text: 'lasts for 2 minutes has been sent to your phone.  Can’t find our message?',
//                               ),
//
//
//                             ],
//                           )
//                       ),
//                     ),
//                     Container(
//                       width: w/1.3,
//                       child: Row(
//                         children: [
//                           InkWell(
//                             onTap: (){
//                               DiDitOnce = true;
//                               Verify();
//                             },
//                             child: Text(
//                                 "Send Again",
//                                 style: TextStyle(
//                                   decoration: TextDecoration.underline,
//                                   color: Color(0xffEAEAEA),
//                                   fontFamily: 'Red Hat Text',
//                                   wordSpacing: 0.8,
//                                   letterSpacing: 0.8,
//                                   fontSize: 15.sp,
//                                   fontWeight: FontWeight.w300,
//                                   height: 1.5.h,
//
//                                 )
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: w/1.32,
//                       child: PinFieldAutoFill(
//                           autoFocus: true,
//                           keyboardType: TextInputType.number,
//                           decoration: UnderlineDecoration(
//                             textStyle: TextStyle(
//                                 fontSize: 15.sp,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.brown
//                             ),
//                             colorBuilder: FixedColorBuilder(Colors.grey),
//                           ),
//                           currentCode: _code,
//                           onCodeSubmitted:(code)async{
//                             DiDitOnce = true;
//                             await VerifyOtp(_code);
//                           },
//                           onCodeChanged: (code)async{
//                             _code = code!;
//                             print(code);
//                             if (code.length == 6) {
//                               FocusScope.of(context).requestFocus(FocusNode());
//                             }
//                           },
//                           codeLength: 6
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 40.h),
//                       child: CustomButton(
//                         onPressed: ()async{
//                           DiDitOnce = true;
//                           if (_code.length == 6) {
//                             await VerifyOtp(_code);
//                           }
//                         },
//                         ButtonText: 'Verify',
//                         btnColor: Color(0xffCF6D38),
//                         TxtColor: Colors.white,
//                         SocialName: 'null',
//                         SocialImage: "Assets/images/path14.svg",
//                         FontFamilySocial: 'Helvetica',
//                         weight: FontWeight.w600,
//                         fontsize: 20.sp,
//                       ),
//                     ),
//                     Container(
//                         width: w,
//                         child :
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                                 margin: EdgeInsets.only(top: 17.h),
//                                 child:
//                                 BackTextButton(cntx: context,)),
//                           ],
//                         )),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }
//     );
//
//
//
//
//   }
// }
