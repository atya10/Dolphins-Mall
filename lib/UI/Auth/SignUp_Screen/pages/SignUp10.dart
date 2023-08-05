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
// import '../../../../core/theme/theme_constants.dart';
// import '../../Login_screen/pages/Login_Page.dart';
//
// class SignUp10 extends StatefulWidget {
//   String PageName;
//   SignUp10(this.PageName);
//   @override
//   _SignUp10State createState() => _SignUp10State();
// }
//
// class _SignUp10State extends State<SignUp10> with WidgetsBindingObserver {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final Pref = PrefsHelper();
//   final bloc2 = sl<SignUpBloc>();
//   ScrollController scrollController =  ScrollController();
//   TextEditingController notesController = TextEditingController();
//   bool newLine = false;
//   @override
//   void initState() {
//     notesController.addListener(() {
//       print('___${notesController.text}');
//       String note = notesController.text;
//       if (note.isNotEmpty && note.substring(note.length - 1) == '\u2022') {
//         print('newline');
//         setState(() {
//           newLine = true;
//         });
//       } else {
//         setState(() {
//           newLine = false;
//         });
//       }
//     });
//     super.initState();
//   }
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
//               Container(
//               width: w,
//               height: h,
//               child: Column(
//               children: [
//                 //
//                 Container(
//                   padding: EdgeInsets.only(top: 136.h),
//                   child: Center(
//                     child: Text(
//                       widget.PageName,
//                       style: Font1.copyWith(
//                           fontSize: 28.sp,
//                           fontWeight: FontWeight.w600,
//                         color: Colors.black
//                       ),
//                     ),
//                   ),
//                 ),
//
//
//                 Row(
//                   //
//                   // 396px
//                   // Height
//                   // 122px
//                   children: [
//                     Container(
//                       height: 36.h,
//                       width: 36.w,
//                       margin: EdgeInsets.only(top: 31.h,left: 5.w),
//                       child: IconButton(
//                         onPressed: (){
//
//                         },
//                         icon: Icon(Icons.arrow_back),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   padding: EdgeInsets.only(top: 20.h),
//                   child: Center(
//                     child: Text(
//                       "What do you like? We'd like to learn more about you.",
//                       style: Font1.copyWith(
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 Container(
//                   width: 396.w,
//                   height: 122.h,
//                   child: TextFormField(
//                         maxLines: 3,
//                         autovalidateMode: AutovalidateMode.always,
//                         controller: notesController,
//                         onChanged: (value) {
//                           Future.delayed(const Duration(milliseconds: 1000), () {
//                             if (newLine) {
//                               return;
//                             }
//                             String note = notesController.text;
//                             if (note.isEmpty) {
//                               notesController.text = notesController.text + '\u2022';
//                               notesController.selection = TextSelection.fromPosition(
//                                   TextPosition(offset: notesController.text.length));
//                             }
//                             if (note.isNotEmpty && note.substring(note.length - 1) == '\n') {
//                               notesController.text = notesController.text + '\u2022';
//                               notesController.selection = TextSelection.fromPosition(
//                                   TextPosition(offset: notesController.text.length));
//                             }
//                           });
//                         },
//                         decoration: const InputDecoration(labelText: 'Notes', hintText: ''),
//                       ),
//                 )
//               ])),
//
//
//                   state.isLoading == true
//                       ? Center(child: listLoader(context: context))
//                       : Container(),
//
//                 ]),
//               ));
//         });
//   }
// }
