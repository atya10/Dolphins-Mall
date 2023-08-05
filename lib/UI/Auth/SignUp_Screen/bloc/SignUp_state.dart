// // ignore_for_file: file_names
//
// library SignUp_state;
//
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// part 'SignUp_state.g.dart';
//
// abstract class SignUpState implements Built<SignUpState, SignUpStateBuilder> {
//
//   String? get error;
//   bool? get isLoading;
//   bool? get success;
//
//   int? get CharLength;
//   String? get SelectedRoleValue;
//   String? get SelectedInterestValue;
//
//   List<bool>? get SelectedListItems;
//
//   SignUpState._();
//   factory SignUpState([updates(SignUpStateBuilder b)]) = _$SignUpState;
//   factory SignUpState.initail() {
//     return SignUpState((b) => b
//       ..error = ""
//       ..SelectedInterestValue = ""
//       ..SelectedRoleValue = ""
//       ..isLoading = false
//       ..success = false
//       ..CharLength = 0
//       ..SelectedListItems = List.filled(250, false)
//       // ..ChangeSelectedd = false
//       // ..GetAvatarSuccess = false
//       // ..UpdateSocialProfileSuccess = false
//       // ..GetAvatar= null
//       // ..GetGender= null
//       // ..GetInterests= null
//       // ..GetSubGenders= null
//       // ..PickedColor= "0xfffffff"
//       // ..SelectedAvatar= ""
//       // ..data =null
//       //   ..UpdateSocialProfile =null
//       //   ..UserDataINDEX = 1000
//       //   ..Pageindex = 0
//       //   ..UpdateProfileINDEX = 1000
//       //   ..Checkemail= null
//       //   ..StepperStatus= List.filled(4, false)
//       //
//       //
//
//     );
//   }
// }
