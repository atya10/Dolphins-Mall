library Login_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;

  bool? get iS_Tab1;
  // UserData? get data;
  // PermissionsModel? get Permissions;

  bool? get ShowPass_IconStatus;
  bool? get CheckboxStatus;

  List<String>? get countries;
  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initail() {
    return LoginState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..ShowPass_IconStatus = false
      ..CheckboxStatus = false
      ..iS_Tab1 = false
      // ..data = null
      //   ..Permissions = null
      //   ..countries = []

    );
  }
}
