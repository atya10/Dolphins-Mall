library Login_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Login_event.g.dart';

abstract class LoginEvent {}


abstract class ChangeTab extends LoginEvent
    implements Built<ChangeTab,ChangeTabBuilder> {


 ChangeTab._();

  factory ChangeTab([updates(ChangeTabBuilder b)]) = _$ChangeTab;
}

abstract class SignInApple extends LoginEvent
    implements Built<SignInApple,SignInAppleBuilder> {

  String?  get Email;
  String?  get fcmToken;
  String?  get FirstName;
  String?  get Lastname;

  SignInApple._();

  factory SignInApple([updates(SignInAppleBuilder b)]) = _$SignInApple;
}


abstract class LoginSocial extends LoginEvent
    implements Built<LoginSocial, LoginSocialBuilder> {
  LoginSocial._();

  String? get  fcmToken;
  String? get Token;
  factory LoginSocial([updates(LoginSocialBuilder b)]) = _$LoginSocial;
}


abstract class LoginGoogle extends LoginEvent
    implements Built<LoginGoogle, LoginGoogleBuilder> {
  LoginGoogle._();

String? get Email;
String? get name;
String? get fcmToken;
String? get avatar;
  factory LoginGoogle([updates(LoginGoogleBuilder b)]) = _$LoginGoogle;
}

abstract class ClearError extends LoginEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();
  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class SetPermission extends LoginEvent
    implements Built<SetPermission, SetPermissionBuilder> {
  SetPermission._();
  int? get is_notify;
  factory SetPermission([updates(SetPermissionBuilder b)]) = _$SetPermission;
}

abstract class LoginWithPhone extends LoginEvent
    implements  Built<LoginWithPhone,LoginWithPhoneBuilder> {
  String? get Phone;
  String? get fcmToken;
  LoginWithPhone._();
  factory LoginWithPhone([updates(LoginWithPhoneBuilder b)]) = _$LoginWithPhone;
}
abstract class ChangeIconStatus extends LoginEvent
    implements  Built<ChangeIconStatus,ChangeIconStatusBuilder> {

  ChangeIconStatus._();
  factory ChangeIconStatus([updates(ChangeIconStatusBuilder b)]) = _$ChangeIconStatus;
}
abstract class ChangeCheckBoxStatus extends LoginEvent
    implements  Built<ChangeCheckBoxStatus,ChangeCheckBoxStatusBuilder> {

  ChangeCheckBoxStatus._();
  factory ChangeCheckBoxStatus([updates(ChangeCheckBoxStatusBuilder b)]) = _$ChangeCheckBoxStatus;
}






