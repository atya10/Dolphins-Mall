// // ignore_for_file: file_names
//
// library SignUp_event;
//
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
//
// part 'SignUp_event.g.dart';
//
// abstract class SignUpEvent {}
//
//
// abstract class ClearError extends SignUpEvent
//     implements Built<ClearError, ClearErrorBuilder> {
//
//   ClearError._();
//
//   factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
//
//
// }
// abstract class ChangeRoleValue extends SignUpEvent
//     implements Built<ChangeRoleValue, ChangeRoleValueBuilder> {
//   ChangeRoleValue._();
//   String? get value;
//   factory ChangeRoleValue([updates(ChangeRoleValueBuilder b)]) = _$ChangeRoleValue;
// }
// abstract class ChangeInterestValue extends SignUpEvent
//     implements Built<ChangeInterestValue, ChangeInterestValueBuilder> {
//   ChangeInterestValue._();
//   String? get value;
//   factory ChangeInterestValue([updates(ChangeInterestValueBuilder b)]) = _$ChangeInterestValue;
// }
// abstract class SelectItemInList extends SignUpEvent
//     implements Built<SelectItemInList, SelectItemInListBuilder> {
//   SelectItemInList._();
//   int? get Index;
//   factory SelectItemInList([updates(SelectItemInListBuilder b)]) = _$SelectItemInList;
// }
// abstract class PostSignUp extends SignUpEvent
//     implements Built<PostSignUp,PostSignUpBuilder> {
//     String? get Email;
//     String? get password;
//     String? get  fcmToken;
//     String? get first_name;
//     String? get last_name;
//     int? get Genter;
//     String? get background_color;
//     String? get  bio;
//     String? get birth_date;
//     List<int>? get interests;
//     int? get avatarID;
//     String? get alias;
//     String? get Image;
//
//   PostSignUp._();
//   factory PostSignUp([updates(PostSignUpBuilder b)]) = _$PostSignUp;
// }
// abstract class ChangeCharLength extends SignUpEvent
//     implements Built<ChangeCharLength, ChangeCharLengthBuilder> {
//   ChangeCharLength._();
//   int? get value;
//   factory ChangeCharLength([updates(ChangeCharLengthBuilder b)]) = _$ChangeCharLength;
// }
