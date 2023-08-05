library login_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_state.g.dart';

abstract class loginState implements Built<loginState, loginStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  // UserData? get data;
  // PermissionsModel? get Permissions;

  bool? get ShowPass_IconStatus;
  bool? get CheckboxStatus;

  List<String>? get countries;
  loginState._();

  factory loginState([updates(loginStateBuilder b)]) = _$loginState;

  factory loginState.initail() {
    return loginState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..ShowPass_IconStatus = false
      ..CheckboxStatus = false
      // ..data = null
      //   ..Permissions = null
      //   ..countries = []

    );
  }
}
