// // ignore_for_file: non_constant_identifier_names, file_names
// import 'dart:io';
// import 'package:animated_snack_bar/animated_snack_bar.dart';
// import 'package:dolphins_mall/Core/theme/theme_constants.dart';
// import 'package:dolphins_mall/Data/prefs_helper/iprefs_helper.dart';
// import 'package:dolphins_mall/Injection.dart';
// import 'package:dolphins_mall/UI/Auth/Login_screen/bloc/ImageChat_state.dart';
// import 'package:country_codes/country_codes.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
//
// //import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_login_facebook/flutter_login_facebook.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';
//
//
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:the_apple_sign_in/the_apple_sign_in.dart';
//
//
// import '../../SignUp_Screen/pages/SignUp1.dart';
// import '../bloc/ImageChat_bloc.dart';
// //import 'package:firebase_messaging/firebase_messaging.dart' as fire;
//
// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// final RegExp regExpEmail = RegExp(
//     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
//
// class _LoginState extends State<Login> with TickerProviderStateMixin {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final TextEditingController _EmailController = TextEditingController();
//   final TextEditingController _pASSController = TextEditingController();
//   var _formkey1 = GlobalKey<FormState>();
//   var _formkey2 = GlobalKey<FormState>();
//   late FocusNode _EmailFocusNode;
//   late FocusNode _PassFocusNode;
//
//   final pref = sl<IPrefsHelper>();
//   GoogleSignInAccount? googleSignInAccount;
//   final _Loginbloc = sl<loginBloc>();
//
//   AnimationController? _controller;
//   GoogleSignIn? googleSignIn;
//   bool Changed3 = false;
//   bool islogedin = false;
//   bool First_Time_Login = true;
//   Animation<double>? ba;
//   AnimationController? _bc;
//   Listenable? listenable;
//   bool Selected = false;
//   bool DiDitOnce = false;
//   String? token;
//   var Fcmtoken;
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   final TextEditingController controller = TextEditingController();
//   String isoCountryCode = 'PS';
//   late PhoneNumber number = PhoneNumber(isoCode: "PS");
//   late Locale? deviceLocale;
//   String numberr = "";
//   //FirebaseAuth auth = FirebaseAuth.instance;
//
//   void SignOutGOogle() {
//     googleSignIn!.signOut();
//   }
//
//   //
//   // Future<void> SetToken(String Token) async {
//   //   await pref.SetToken(Token);
//   // }
//
//   // Future<void> SetNotFirstTime() async {
//   //   await pref.SetisFirstTimeLogin();
//   // }
// //       String fcmtokenn = "";
// //                                                     await FirebaseMessaging.instance.getToken().then((FcmTOken) {
// //                                                         fcmtokenn = FcmTOken!;
// //                                                       });
// //                                                     var token =fcmtokenn;
// //                                                       print(token);
// // // //   Future<void> getFcmToken() async {
// // // //     fire.FirebaseMessaging.instance.getToken().then((FcmTOken) {
// // // //       print(FcmTOken);
// // // //       return Fcmtoken = FcmTOken;
// // // //     });
// // // //   }
// // // .
// //   .
//   // Future<void> GetISloggedIN() async {
//   //   islogedin = await pref.getIsLogin();
//   //   First_Time_Login = await pref.GetisFirstTimeLogin();
//   //   String tokenn = await pref.getToken();
//   //   print("islogedin1 : ${islogedin}");
//   //   print("islogedin2 : ${islogedin}");
//   //   if (!First_Time_Login) {
//   //     if (islogedin && tokenn.isNotEmpty) {
//   //       SetNotFirstTime();
//   //       AnimatedSnackBar.material(
//   //         "Welcome Back!",
//   //         type: AnimatedSnackBarType.info,
//   //         duration: Duration(seconds: 2),
//   //         // mobileSnackBarPosition: MobileSnackBarPosition.bottom, // Position of snackbar on mobile devices
//   //         // desktopSnackBarPosition: DesktopSnackBarPosition.topRight, // Position of snackbar on desktop devices
//   //       ).show(context);
//   //       print("islogedin3 : ${islogedin}");
//   //       WidgetsBinding.instance.addPostFrameCallback((_) => Navigator.pushReplacement(
//   //             context,
//   //             MaterialPageRoute(
//   //               builder: (context) => NavigatorTopBar(
//   //                 GotToHomeAndOpenPanel: false,
//   //               ),
//   //             ),
//   //           ));
//   //     }
//   //     print("islogedin4 : ${islogedin}");
//   //   } else {
//   //     print("Yep first time");
//   //   }
//   // }
//
//   Future<void> signInWithApple() async {
//     print('Started');
//     String? email;
//     PersonNameComponents? fullName;
//     String? familyName;
//     String? givenName;
//
//     // final appleSingup = await _auth.signInWithProvider(appleProvider);
//     // print(appleSingup.user);
//     // final app = await SignInWithApple.getAppleIDCredential(scopes: [
//     //   AppleIDAuthorizationScopes.email,
//     //   AppleIDAuthorizationScopes.fullName,
//     // ]);
//
//     // print(app.authorizationCode);
//     final AuthorizationResult result = await TheAppleSignIn.performRequests([
//       AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
//     ]);
//     if (result.status == AuthorizationStatus.authorized &&
//         result.credential?.fullName != null) {
//       email = result.credential?.email ?? '';
//       fullName = result.credential?.fullName;
//       familyName = result.credential?.fullName?.familyName;
//       givenName = result.credential?.fullName?.givenName;
//
//       print('User email $email');
//       print('User familyName ${fullName?.familyName}');
//       print('User given name ${fullName?.givenName}');
//
//       // _Loginbloc.add(SignInApple((b) => b
//       //     ..fcmToken = Fcmtoken
//       //     ..Lastname = familyName
//       //     ..FirstName =givenName
//       //     ..Email = email
//       // ));
//
//     } else {
//       print("exception");
//     }
//   }
//
//
//   Future<void> signInWithFacebook2() async {
//     try {
//       var h = MediaQuery.of(context).size.height;
//       var w = MediaQuery.of(context).size.width;
//       bool result = await InternetConnectionChecker().hasConnection;
//       if (result == true) {
//         final LoginResult loginResult = await FacebookAuth.instance.login();
//         print(loginResult.message.toString());
//         print(loginResult.accessToken!.token);
//         if (loginResult.accessToken!.token != null) {
//           print("token  : ${loginResult.accessToken!.token}");
//          // SetToken(loginResult.accessToken!.token);
//           DiDitOnce = true;
//           // _Loginbloc.add(LoginSocial((b) => b
//           //   ..Token = loginResult.accessToken!.token
//           //   ..fcmToken = Fcmtoken));
//         }
//       } else {
//         AnimatedSnackBar.material(
//           'Check your internet connection',
//           duration: Duration(seconds: 2),
//           type: AnimatedSnackBarType.error,
//         ).show(
//           context,
//         );
//         // print('No internet :( Reason:');
//         // CommingSoonPopup(context,   "Check your internet connection then try again", "Ok", 17);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//   Future<void> signInWithFacebook() async {
//     try {
//       var h = MediaQuery.of(context).size.height;
//       var w = MediaQuery.of(context).size.width;
//       bool result = await InternetConnectionChecker().hasConnection;
//       if (result == true) {
//         print("inside");
//         String? _token;
//         var facebookToken = await FacebookLogin().logIn(permissions: [
//           FacebookPermission.publicProfile,
//           FacebookPermission.email
//         ]);
//         print("inside");
//         setState(() {
//           _token = facebookToken.accessToken?.token;
//         });
//         print("inside");
//         print(_token);
//         if (_token != null) {
//           // print("token  : ${loginResult.accessToken!.token}");
//           print("token  : $_token");
//           // SetToken(loginResult.accessToken!.token);
//          // SetToken(_token!);
//           DiDitOnce = true;
//           // / _Loginbloc.add(LoginSocial((b) => b
//           // /   ..Token = _token
//           // /   ..fcmToken = Fcmtoken));
//         }
//         // final LoginResult loginResult = await FacebookAuth.instance.login();
//         // print(loginResult.message.toString());
//         // print(loginResult.accessToken!.token);
//         // if (loginResult.accessToken!.token != null) {
//         //   print("token  : ${loginResult.accessToken!.token}");
//         //   SetToken(loginResult.accessToken!.token);
//         //   DiDitOnce = true;
//         //   _Loginbloc.add(LoginSocial((b) => b
//         //     ..Token = loginResult.accessToken!.token
//         //     ..fcmToken = Fcmtoken));
//         // }
//       } else {
//         AnimatedSnackBar.material(
//           'Check your internet connection',
//           duration: Duration(seconds: 2),
//           type: AnimatedSnackBarType.error,
//         ).show(
//           context,
//         );
//         // print('No internet :( Reason:');
//         // CommingSoonPopup(context,   "Check your internet connection then try again", "Ok", 17);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//
//   Future<void> signInWithGoogle({required BuildContext context}) async {
//     try {
//       var h = MediaQuery.of(context).size.height;
//       var w = MediaQuery.of(context).size.width;
//       String Email;
//       String PhotoUrl;
//       String Name;
//       bool result = await InternetConnectionChecker().hasConnection;
//       if (result == true) {
//         googleSignIn = GoogleSignIn();
//         //  googleSignIn.signOut();
//         googleSignInAccount = await googleSignIn!.signIn();
//
//         if (googleSignInAccount != null) {
//           googleSignInAccount!.authentication.then((value) {});
//
//           Email = googleSignInAccount!.email;
//           PhotoUrl = googleSignInAccount!.photoUrl.toString();
//           Name = googleSignInAccount!.displayName.toString();
//           print(Email);
//           print(PhotoUrl);
//           print(Name);
// //I/flutter ( 5753): saedyounis99@gmail.com
// // I/flutter ( 5753): https://lh3.googleusercontent.com/a/AGNmyxYVziokaExRhQtUQPib9PwgQDdRgHkfpFaw4es5VA
// // I/flutter ( 5753): Saed Younis
//           ///done
//           // _Loginbloc.add(LoginGoogle((b) => b
//           //   ..Email = Email
//           //   ..avatar = PhotoUrl
//           //   ..name = Name
//           //   ..fcmToken = Fcmtoken));
//
//           DiDitOnce = true;
//         }
//       } else {
//         AnimatedSnackBar.material(
//           'Check your internet connection',
//           duration: Duration(seconds: 2),
//           type: AnimatedSnackBarType.error,
//         ).show(
//           context,
//         );
//
//         // ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         // _scaffoldKey.showSnackBar(snackBar);
//         //      print('No internet :( Reason:');
//         // CommingSoonPopup(context,   "Check your internet connection then try again", "Ok", 17);
//       }
//     // } on FirebaseAuthException catch (e) {
//     //   if (e.code == 'account-exists-with-different-credential') {
//     //   } else if (e.code == 'invalid-credential') {}
//     } catch (e) {
//       print(e);
//     }
//   }
//
//
//   Future<void> getLocal() async {
//     deviceLocale = await CountryCodes.getDeviceLocale();
//     print(deviceLocale!.countryCode);
//     number = PhoneNumber(isoCode: deviceLocale!.countryCode.toString());
//   }
//
//   @override
//   void initState() {
//     // getLocal();
//
//     // Verify();
//     // GetISloggedIN();
//     _EmailFocusNode = FocusNode();
//     _PassFocusNode = FocusNode();
//
//     ///getFcmToken();
//     // _controller = AnimationController(
//     //     vsync: this, duration: Duration(milliseconds: 250), value: 1);
//     // _controller!.repeat(reverse: true);
//     // // listenable = AnimationController(
//     // //   duration: const Duration(seconds: 5),
//     // //   vsync: this,
//     // // )..repeat();
//     //
//     // _bc = AnimationController(
//     //   duration: const Duration(seconds: 5),
//     //   vsync: this,
//     // )..repeat();
//     // googleSignIn = GoogleSignIn();
//     // googleSignIn!.isSignedIn().then((value) =>     SignOutGOogle());
//     // _controller = AnimationController(
//     //   duration: const Duration(seconds: 10),
//     //   vsync: this,
//     // )..repeat();
//     //
//     // ba = CurvedAnimation(parent: ba!, curve: Curves.easeIn);
//     // SystemChrome.setSystemUIOverlayStyle(
//     //   const SystemUiOverlayStyle(
//     //       statusBarColor: Color(0xff932557),
//     //       systemNavigationBarColor: Color(0xff303030)),
//     // );
//
//     super.initState();
//   }
//
//   // @override
//   // void didChangeAppLifecycleState(AppLifecycleState state) {
//   //
//   //   switch (state) {
//   //     case AppLifecycleState.resumed:
//   //     //BackGroundCounter = 0;
//   //       break;
//   //     case AppLifecycleState.inactive:
//   //
//   //       break;
//   //     case AppLifecycleState.paused:
//   //
//   //       break;
//   //     case AppLifecycleState.detached:
//   //
//   //       break;
//   //   }
//   //
//   // }
//   void getPhoneNumber(String phoneNumber) async {
//     PhoneNumber number =
//         await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
//     setState(() {
//       this.number = number;
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller!.dispose();
//     _EmailController.dispose();
//     // _bc!.dispose();
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext Context) {
//     TextTheme _TextTheme = Theme.of(context).textTheme;
//     ColorScheme ColorS = Theme.of(context).colorScheme;
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     var media = MediaQuery.of(context).size;
//     return BlocBuilder(
//         bloc: _Loginbloc,
//         builder: (BuildContext context, loginState state) {
//           //   if (state.success == true && DiDitOnce == true) {
//           //    // SetNotFirstTime();
//           //
//           //     if (state.data!.user!.data!.avatar == null) {
//           // //      SetToken(state.data!.user!.token!);
//           //   //   UsersData Users = UsersData();
//           //
//           //       // WidgetsBinding.instance
//           //       //     .addPostFrameCallback((_) => Navigator.push(
//           //       //           context,
//           //       //           MaterialPageRoute(
//           //       //             builder: (context) => Onboarding2(
//           //       //               Users: Users,
//           //       //             ),
//           //       //           ),
//           //       //         ));
//           //     } else {
//           //       // pref.saveUser(
//           //       //   state.data!.user!,
//           //       //   state.data!.user!.token!,
//           //       //   true,
//           //       // );
//           //       AnimatedSnackBar.material(
//           //         'Logged in Successfully',
//           //         duration: Duration(seconds: 2),
//           //         type: AnimatedSnackBarType.success,
//           //       ).show(
//           //         context,
//           //       );
//           //       // WidgetsBinding.instance
//           //       //     .addPostFrameCallback((_) => Navigator.push(
//           //       //           context,
//           //       //           MaterialPageRoute(
//           //       //             builder: (context) => NavigatorTopBar(
//           //       //               GotToHomeAndOpenPanel: false,
//           //       //             ),
//           //       //           ),
//           //       //         ));
//           //     }
//           //     DiDitOnce = false;
//           //   }
//           return WillPopScope(
//               onWillPop: () async => false,
//               child: Scaffold(
//                   resizeToAvoidBottomInset: false,
//                   key: _scaffoldKey,
//                   body: SafeArea(
//                     child: Stack(
//                       children: [
//                         Container(
//                           width: w,
//                           height: h,
//                           child: Column(
//                             children: [
//                               Container(
//                                 padding: EdgeInsets.only(top: 136.h),
//                                 child: Center(
//                                   child: Text(
//                                     'TheMentr',
//                                     style: Font1.copyWith(
//                                       fontSize: 32.sp,
//                                         color: Color(0xff015595)
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                            Container(
//                              child: Column(
//                                children: [
//                                  Container(
//                                  width: w,
//                                  margin: EdgeInsets.only(top: 38.h,left: 18.w),
//                                  child:  Container(
//                                    child: Text(
//                                      'Sign in',
//                                      textAlign: TextAlign.left,
//                                      style: Font1.copyWith(
//                                          fontSize: 28.sp,
//                                          fontWeight: FontWeight.w600
//                                      ),
//                                    ),
//                                  ),
//
//                                ),
//                                  Container(
//                                    margin: EdgeInsets.only(top: 9.h,bottom: 39.h,left: 18.w),
//                                    child: Row(
//                                      children: [
//                                        Text(
//                                          'Welcome back',
//                                          style: Font1.copyWith(
//                                              fontSize: 16.sp,
//                                              fontWeight: FontWeight.w400
//                                          ),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Form(
//                                    autovalidateMode: AutovalidateMode.onUserInteraction,
//                                    key: _formkey1,
//                                    child:
//                                    textfeild(
//                                      type:  TextInputType.text,
//                                      BorderRaduis: 5,
//                                      BorderColor: Color(0xff077BCD),
//                                      HintText_Style: Font1.copyWith(
//                                        fontWeight: FontWeight.w500,
//                                        fontSize: 16.sp,
//                                      ),
//                                      LeftContentPadding: 5,
//                                      textAlign: TextAlign.left,
//                                      FontSize: 20,
//                                      hidePass: false,
//                                      FillColor: Colors.transparent,
//                                      width: 393,
//                                      Hieght: 76,
//                                      topContentPadding: 0,
//                                      MaxLines: 1,
//                                      Margin: 0,
//                                      FoucesNode:_EmailFocusNode,
//                                      Onsubmitted: (String){},
//                                      TextInputaction: TextInputAction.next,
//                                      Controller: _EmailController, Hint_Text: "Email or Phone",
//                                      Onchanged:(String){},
//                                      validator: MultiValidator([
//                                        RequiredValidator(errorText: "Required"),
//                                        EmailValidator(errorText: "That's not an Email"),
//                                      ]),
//                                      IconClicked: () {
//
//
//
//                                      },obscureText:true,
//                                    ),),
//                                  Container(
//                                    child: Form(
//                                      autovalidateMode: AutovalidateMode.onUserInteraction,
//                                      key: _formkey2,
//                                      child:
//                                      textfeild(
//                                        type:  TextInputType.text,
//                                        BorderRaduis: 5,
//                                        BorderColor: Color(0xff077BCD),
//                                        HintText_Style: Font1.copyWith(
//                                          fontWeight: FontWeight.w500,
//                                          fontSize: 16.sp,
//                                        ),
//                                        LeftContentPadding: 5,
//                                        textAlign: TextAlign.left,
//                                        FontSize: 20,
//                                        hidePass: true,
//                                        FillColor: Colors.transparent,
//                                        width: 393,
//                                        Hieght: 76,
//                                        topContentPadding: 25,
//                                        MaxLines: 1,
//                                        Margin: 0,
//                                        FoucesNode:_PassFocusNode,
//                                        Onsubmitted: (String){},
//                                        TextInputaction: TextInputAction.done,
//                                        Controller: _pASSController, Hint_Text: "Password",
//                                        Onchanged:(String){},
//                                        validator: MultiValidator([
//                                          RequiredValidator(errorText: "Required"),
//                                        ]), IconClicked: () {    _Loginbloc.add(ChangeIconStatus()); }, obscureText: state.ShowPass_IconStatus!,
//                                      ),),
//                                  ),
//                                  Container(
//                                    margin: EdgeInsets.only(left: 7.w),
//                                    child: Row(
//                                      children: [
//                                        Checkbox(
//                                          checkColor: Colors.blue,
//                                          // activeColor: Color(0xff303030),
//                                          //  focusColor: Color(0xff303030),
//                                          fillColor: MaterialStateProperty.resolveWith ((states) {
//                                            if (states.contains(MaterialState.disabled)) {
//                                              return Color(0xff303030);
//                                            }
//                                            return Color(0xff303030);
//                                          }),
//                                          value: state.CheckboxStatus,
//                                          shape: RoundedRectangleBorder(
//                                            borderRadius: BorderRadius.vertical(
//                                              top: Radius.circular(5.0.r),
//                                              bottom: Radius.circular(5.0.r),
//                                            ),
//                                          ),
//                                          onChanged: (value) {
//                                            _Loginbloc.add(ChangeCheckBoxStatus());
//                                          },
//                                        ),
//                                    RemoveHighlight(
//                                        InkWell(
//                                          onTap: (){
//                                            _Loginbloc.add(ChangeCheckBoxStatus());
//                                          },
//                                          child: Container(
//                                            padding: EdgeInsets.only(top: 6.h,right: 20.w),
//                                            child: Text(
//                                              'Remember me',
//                                              style: Font1.copyWith(
//                                                  fontSize: 16.sp,
//                                                  fontWeight: FontWeight.w400
//                                              ),
//                                            ),
//                                          ),
//                                        ),
//                                    ),
//                                      ],
//                                    ),
//                                  ),
//                                  Container(
//                                    margin: EdgeInsets.only(top: 22.h),
//                                    child: CustomButton(
//                                      onPressed: () async {
//                                        if (
//                                        true
//                                        // _formkey2.currentState!.validate()&&
//                                        //     _formkey1.currentState!.validate()
//                                        ){
//                                          //
//                                            WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                              context,
//                                              MaterialPageRoute(
//                                                builder: (context) => HomeScreen(),
//                                              ),
//                                            ));
//                                        }
//                                        // if (state.Pageindex==2){
//                                        //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                        //     context,
//                                        //     MaterialPageRoute(
//                                        //       builder: (context) => Login(),
//                                        //     ),
//                                        //   ));
//                                        // }
//                                        // if (state.Pageindex! != 2){
//                                        //   _SliderBloc.add(ChangePageIndex(((b) => b..index = state.Pageindex! +1)));
//                                        //   _pageController.animateToPage(
//                                        //     state.Pageindex ! + 1,
//                                        //     duration: Duration(milliseconds: 700),
//                                        //     curve: Curves.easeIn,
//                                        //   );
//                                        // }
//
//
//
//                                        // bool result =await InternetConnectionChecker().hasConnection;
//                                        // if (result == true) {
//                                        //   // if (_formkey1.currentState! .validate()) {
//                                        //   //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                        //   //     context,
//                                        //   //     MaterialPageRoute(
//                                        //   //       builder: (context) => Login2(Email: _EmailController.text,),
//                                        //   //     ),
//                                        //   //   ));
//                                        //   // }
//                                        // } else {
//                                        //   AnimatedSnackBar.material(
//                                        //     'Check your internet connection',
//                                        //     duration: Duration(seconds: 2),
//                                        //     type: AnimatedSnackBarType.error,
//                                        //   ).show(
//                                        //     context,
//                                        //   );
//                                        // }
//                                      },
//                                      ButtonText: 'Sign in',
//                                      btnColor: Color(0xff015595),
//                                      TxtColor: Color(0xffFFFFFF),
//                                      SocialName: 'null',
//                                      weight: FontWeight.w600,
//                                      fontsize: 20.sp,
//                                      HeigthBTN: 56.h,
//                                      Widthbtn: 393.w, BorderColor:  Color(0xff015595),
//
//                                    ),
//                                  ),
//                                  RemoveHighlight(InkWell(
//                                        onTap: (){
//
//                                        },
//                                        child: Container(
//                                          margin: EdgeInsets.only(top: 16.h),
//                                          child: Text(
//                                            'Forget Password?',
//                                            textAlign: TextAlign.left,
//                                            style: Font1.copyWith(
//                                              fontWeight: FontWeight.w600,
//                                              fontSize: 16.sp,
//                                            ),
//                                          ),
//                                        ),)),
//                                  RemoveHighlight(
//                                      InkWell(
//                                        onTap: (){
//
//                                          WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                            context,
//                                            MaterialPageRoute(
//                                              builder: (context) => SignUp(),
//                                            ),
//                                          ));
//                                        },
//                                        child: Container(
//                                          margin: EdgeInsets.only(top: 22.h),
//                                          child: RichText(
//                                              textAlign: TextAlign.left,
//                                              text: TextSpan(
//                                                children: [
//                                                  TextSpan(
//                                                    text: 'Don’t have an account yet? ',
//                                                    style:Font1.copyWith(
//                                                        color: Color(0xff2B2B2B),
//                                                      fontWeight: FontWeight.w400,
//                                                      fontSize: 16.sp,
//                                                    )
//
//                                                  ),
//                                                  TextSpan(
//                                                    text: 'Register',
//                                                      style:Font1.copyWith(color: Color(0xff015595)    , fontWeight: FontWeight.w400,
//                                                        fontSize: 16.sp,),
//                                                  ),
//
//
//                                                ],
//                                              )
//                                          ),
//                                        ),
//                                      ),),
//                                  Container(
//                                    width: w,
//                                    padding: EdgeInsets.only(left: 15.5.w,right: 15.5.w),
//                                    margin: EdgeInsets.only(top: 28.h,bottom: 38.h),
//                                    child: Row(
//                                      children: [
//                                        Container(
//                                          width: 174.w,
//                                          height: 1.h,
//                                          color: Color(0xff077BCD),
//                                        ),
//                                        Container(
//                                          margin: EdgeInsets.only(left: 16.w,right: 16.w),
//                                          child: Text('or',
//                                            style: Font1.copyWith(
//                                              fontWeight: FontWeight.w500,
//                                              fontSize: 16.sp,
//                                            ),
//                                          ),
//                                        ),
//                                        Container(
//                                          width: 174.w,
//                                          height: 1.h,
//                                          color: Color(0xff077BCD),
//                                        ),
//                                      ],
//                                    ),
//                                  ),
//                                  Container(
//                                    child: CustomButton(
//                                      onPressed: () async {
//                                        signInWithGoogle(context: Context);
//                                      },
//                                      ButtonText: 'Continue with Google',
//                                      btnColor: Colors.transparent,
//                                      TxtColor: Color(0xff2B2B2B),
//                                      SocialName: 'null',
//                                      weight: FontWeight.w600,
//                                      fontsize: 20.sp,
//                                      HeigthBTN: 56.h,
//                                      Widthbtn: 393.w,
//                                      BorderColor:  Color(0xff015595),
//                                    ),
//                                  ),
//                                  Container(
//                                    margin: EdgeInsets.only(top: 16.h),
//                                    child: CustomButton(
//                                      BorderColor:   Color(0xff015595),
//                                      onPressed: () async {
//                                  //      signInWithFacebook2();
//                                        signInWithFacebook();
//
//                                      },
//                                      ButtonText: 'Continue with Facebook',
//                                      btnColor: Colors.transparent,
//                                      TxtColor: Color(0xff2B2B2B),
//                                      SocialName: 'null',
//                                      weight: FontWeight.w600,
//                                      fontsize: 20.sp,
//                                      HeigthBTN: 56.h,
//                                      Widthbtn: 393.w,
//
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            )
//                               // Container(
//                               //   width: w / 1.32,
//                               //   child: AspectRatio(
//                               //     aspectRatio: 50 / 10,
//                               //     //aspect ratio for Image
//                               //     child: SvgPicture.asset(
//                               //         "Assets/images/Logo.svg",
//                               //         fit: BoxFit.fill),
//                               //   ),
//                               // ),
//                               // SizedBox(height: 80.h,),
//
//                               // Container(
//                               //   width: w / 1.4,
//                               //   margin: EdgeInsets.only(top: 45.h),
//                               //   child: AspectRatio(
//                               //     aspectRatio: 50 / 16,
//                               //     //aspect ratio for Image
//                               //     child:
//                               //     Image.asset("Assets/images/image.png" ,  fit: BoxFit.fill),
//                               //   ),
//                               // ),
//
//                               // Container(
//                               //   width: w / 1.2,
//                               //   margin: EdgeInsets.only(top: 38.h),
//                               //   child: Text(
//                               //     '   Be around,              Find your bubble!',
//                               //     textAlign: TextAlign.center,
//                               //     style: TextStyle(
//                               //         color:
//                               //             Color.fromRGBO(255, 255, 255, 1),
//                               //         fontFamily: 'Red Hat Display',
//                               //         fontSize: 28.sp,
//                               //         letterSpacing: 0.2,
//                               //         fontStyle: FontStyle.italic,
//                               //         fontWeight: FontWeight.w800,
//                               //         height: 0.8.h),
//                               //   ),
//                               // ),
//                               // Form(
//                               //   autovalidateMode: AutovalidateMode.onUserInteraction,
//                               //   key: _formkey1,
//                               //   child:
//                               //   textfeild(
//                               //     FontSize: 20,
//                               //     hidePass: false,
//                               //     FillColor: Colors.white,
//                               //     weidth: 1.32,
//                               //     topContentPadding: 0,
//                               //     MaxLines: 1,
//                               //     Height: 10,
//                               //     Margin: 25,
//                               //     FoucesNode:_EmailFocusNode,
//                               //     Onsubmitted: (String){},
//                               //     TextInputaction: TextInputAction.next,
//                               //     Controller: _EmailController, Hint_Text: "Email",
//                               //     Onchanged:(String){},
//                               //     validator: MultiValidator([
//                               //       RequiredValidator(errorText: "Required"),
//                               //       EmailValidator(errorText: "Thats not an email"),
//                               //     ]),
//                               //   ),),
//                               // Container(
//                               //   width: w/1.35,
//                               //   margin: EdgeInsets.only(bottom: 10.h,top: 20.h),
//                               //   child: InternationalPhoneNumberInput(
//                               //     onInputChanged: (PhoneNumber number) {
//                               //       print(number.phoneNumber);
//                               //       numberr = number.phoneNumber.toString();
//                               //     },
//                               //     onInputValidated: (bool value) {
//                               //       print(value);
//                               //     },
//                               //     selectorConfig: SelectorConfig(
//                               //       selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//                               //     ),
//                               //     ignoreBlank: false,
//                               //     autoValidateMode: AutovalidateMode.disabled,
//                               //     selectorTextStyle: TextStyle(color: Color(0xffEAEAEA)),
//                               //     initialValue: number,
//                               //     textFieldController: controller,
//                               //     formatInput: false,
//                               //     keyboardType:  TextInputType.numberWithOptions(signed: true, decimal: true),
//                               //
//                               //     onSaved: (PhoneNumber number) {
//                               //       print('On Saved: $number');
//                               //     },
//                               //     hintText: "Phone number",
//                               //   ),
//                               // ),
//
//                               //
//                               //  CustomButton(
//                               //    onPressed: ()async{
//                               //    // if (numberr.isNotEmpty)
//                               //    //     WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                               //    //           context,
//                               //    //           MaterialPageRoute(
//                               //    //             builder: (context) => OtpScreen(number: numberr,),
//                               //    //           ),
//                               //    //         ));
//                               //   //     Verify();
//                               //      bool result =await InternetConnectionChecker().hasConnection;
//                               //      if (result == true) {
//                               //        // if (_formkey1.currentState! .validate()) {
//                               //        //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                               //        //     context,
//                               //        //     MaterialPageRoute(
//                               //        //       builder: (context) => Login2(Email: _EmailController.text,),
//                               //        //     ),
//                               //        //   ));
//                               //        // }
//                               //      } else {
//                               //        AnimatedSnackBar.material(
//                               //          'Check your internet connection',
//                               //          duration: Duration(seconds: 2),
//                               //          type: AnimatedSnackBarType.error,
//                               //        ).show(
//                               //          context,
//                               //        );
//                               //      }
//                               //    },
//                               //    ButtonText: 'Continue',
//                               //    btnColor: Color(0xffCF6D38),
//                               //    TxtColor: Color(0xffFFFFFF),
//                               //    SocialName: 'null',
//                               //    weight: FontWeight.w600,
//                               //    fontsize: 13.86.sp,
//                               //  ),
//                               //  Container(
//                               //    width: w,
//                               //    margin:  EdgeInsets.only(top: 8.h, bottom: 8.h),
//                               //    child: Center(
//                               //        child: Text(
//                               //          'or',
//                               //          textAlign: TextAlign.center,
//                               //          style: TextStyle(
//                               //              color:  Colors.white,
//                               //              fontFamily: 'Red Hat Text',
//                               //              fontSize: 16.sp,
//                               //              letterSpacing: 0,
//                               //              fontWeight: FontWeight.w600,
//                               //              height: 1.1875.h),
//                               //        )),
//                               //  ),
//                               //  // CustomButton(
//                               //  //   onPressed: ()async{ signInWithFacebook(); },
//                               //  //   ButtonText: 'Continue with Facebook',
//                               //  //   btnColor: Color(0xff1877F2),
//                               //  //   TxtColor: Colors.white,
//                               //  //   SocialName: 'signInWithFacebook',
//                               //  //   SocialImage: "Assets/images/path14.svg",
//                               //  //   FontFamilySocial: 'Helvetica',
//                               //  //   weight: FontWeight.w700,
//                               //  //   fontsize: 13.86.sp,
//                               //  // ),
//                               //  // SizedBox(height: 7.h,),
//                               //  // CustomButton(
//                               //  //   onPressed: ()async{
//                               //  //  //   signInWithGoogle(context: context);
//                               //  //     },
//                               //  //   ButtonText: 'Continue with Google',
//                               //  //   btnColor: Colors.white,
//                               //  //   TxtColor: Color.fromRGBO(0, 0, 0, 0.5400000214576721),
//                               //  //   SocialName: 'signInWithGoogle',
//                               //  //   SocialImage:"Assets/images/Google Logo.svg" ,
//                               //  //   FontFamilySocial: 'Roboto Medium',
//                               //  //   weight: FontWeight.w500,
//                               //  //   fontsize: 13.86.sp,
//                               //  // ),
//                               //
//                               //
//                               //  SizedBox(height: 7.h,),
//                               // // Platform.isIOS?
//                               // //  CustomButton(
//                               // //    onPressed: ()async{   signInWithApple();},
//                               // //    ButtonText: 'Continue with Apple',
//                               // //    btnColor: Colors.black,
//                               // //    TxtColor: Colors.white,
//                               // //    SocialName: 'SigninWIthApple',
//                               // //    SocialImage: "Assets/images/path4.svg",
//                               // //    FontFamilySocial: 'Roboto',
//                               // //    weight: FontWeight.w500,
//                               // //    fontsize: 13.86.sp,
//                               // //  )
//                               // //       :Container(),
//                               //  //    Container(
//                               //  //      width: w/1.4,
//                               //  //      margin: EdgeInsets.only(top:!Platform.isIOS?40.h: 10.h),
//                               //  //      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam scelerisque donec varius.',
//                               //  //        textAlign: TextAlign.center, style: TextStyle(
//                               //  //       color: Color(0xffEAEAEA),
//                               //  //       fontFamily: 'Red Hat Text',
//                               //  //       fontSize: 11.sp,
//                               //  //       fontWeight: FontWeight.w300,
//                               //  //       height: 1.3636363636363635.h
//                               //  // ),),
//                               //  //    )
//                               //  Container(
//                               //    margin: EdgeInsets.only(top: h/50),
//                               //    child: InkWell(
//                               //      onTap: () async {
//                               //        bool result = await InternetConnectionChecker().hasConnection;
//                               //        if (result == true) {
//                               //          WidgetsBinding.instance
//                               //              .addPostFrameCallback(
//                               //                  (_) => Navigator.push(
//                               //                context,
//                               //                MaterialPageRoute(
//                               //                  builder: (context) =>
//                               //                      SignUp(),
//                               //                ),
//                               //              ));
//                               //        } else {
//                               //          AnimatedSnackBar.material(
//                               //            'Check your internet connection',
//                               //            duration: Duration(seconds: 2),
//                               //            type: AnimatedSnackBarType.error,
//                               //          ).show(
//                               //            context,
//                               //          );
//                               //          // CommingSoonPopup(context,
//                               //          //     "Check your internet connection then try again", "Ok", 17);
//                               //        }
//                               //      },
//                               //      child: Column(
//                               //        mainAxisAlignment:
//                               //        MainAxisAlignment.start,
//                               //        children: [
//                               //          Text('Don’t have an account?',
//                               //              textAlign: TextAlign.center,
//                               //              style: _TextTheme.headline1!
//                               //                  .copyWith(
//                               //                  fontSize: 14.sp,
//                               //                  letterSpacing: 0.3,
//                               //                  fontWeight:
//                               //                  FontWeight.w300,
//                               //                  height: 1)),
//                               //          Text("Sign up",
//                               //              textAlign: TextAlign.center,
//                               //              style: _TextTheme.headline1!
//                               //                  .copyWith(
//                               //                  decoration: TextDecoration
//                               //                      .underline,
//                               //                  fontSize: 9.sp,
//                               //                  letterSpacing: 0.3,
//                               //                  fontWeight:
//                               //                  FontWeight.w500,
//                               //                  height: 1)),
//                               //        ],
//                               //      ),
//                               //    ),
//                               //  ),
//                             ],
//                           ),
//                         ),
//                         state.isLoading == true
//                             ? Center(child: listLoader(context: context))
//                             : Container(),
//                       ],
//                     ),
//                   )));
//         });
//   }
//
// //
//
// // Animatable<Color?> darkBackground = TweenSequence<Color?>(
// //   [
// //     TweenSequenceItem(
// //       weight: .5,
// //       tween: ColorTween(
// //         begin: Color(0xffA93064).withOpacity(.9),
// //         end: Color(0xff932557).withOpacity(.9),
// //       ) as Animatable<Color?>,
// //     ),
// //     TweenSequenceItem(
// //       weight: .5,
// //       tween: ColorTween(
// //         begin: Color(0xff932557).withOpacity(.9),
// //         end: Color(0xffA93064).withOpacity(.9),
// //       ) as Animatable<Color?>,
// //     ),
// //   ],
// // );
// //
// // Animatable<Color?> normalBackground = TweenSequence<Color?>(
// //   [
// //     TweenSequenceItem(
// //       weight: .5,
// //       tween: ColorTween(
// //         begin: Color(0xff932557).withOpacity(.9),
// //         end: Color(0xffB9484C).withOpacity(.9),
// //       ) as Animatable<Color?>,
// //     ),
// //     TweenSequenceItem(
// //       weight: .5,
// //       tween: ColorTween(
// //         begin: Color(0xffB9484C).withOpacity(.9),
// //         end: Color(0xff932557).withOpacity(.9),
// //       ) as Animatable<Color?>,
// //     ),
// //   ],
// // );
// //
// // Animatable<Color?> lightBackground = TweenSequence<Color?>(
// //   [
// //     TweenSequenceItem(
// //       weight: .5,
// //       tween: ColorTween(
// //         begin: Color(0xff932557).withOpacity(.9),
// //         end: Color(0xffB9484C).withOpacity(.9),
// //       ) as Animatable<Color?>,
// //     ),
// //     TweenSequenceItem(
// //       weight: .5,
// //       tween: ColorTween(
// //         begin: Color(0xffB9484C).withOpacity(0.9),
// //         end: Color(0xff932557).withOpacity(0.9),
// //       ) as Animatable<Color?>,
// //     ),
// //   ],
// // );
// // AlignmentTween aT =
// // AlignmentTween(begin: Alignment.topRight, end: Alignment.topLeft);
// // AlignmentTween aB =
// // AlignmentTween(begin: Alignment.bottomRight, end: Alignment.bottomLeft);
//
// }
