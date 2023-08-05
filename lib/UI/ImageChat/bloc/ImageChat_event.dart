library ImageChat_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ImageChat_event.g.dart';

abstract class ImageChatevent {}


abstract class PostLOgin extends ImageChatevent
    implements Built<PostLOgin,PostLOginBuilder> {

 String?  get Email;
 String?  get password;
 String?  get fcmToken;

 PostLOgin._();

  factory PostLOgin([updates(PostLOginBuilder b)]) = _$PostLOgin;
}

abstract class SignInApple extends ImageChatevent
    implements Built<SignInApple,SignInAppleBuilder> {

  String?  get Email;
  String?  get fcmToken;
  String?  get FirstName;
  String?  get Lastname;

  SignInApple._();

  factory SignInApple([updates(SignInAppleBuilder b)]) = _$SignInApple;
}


abstract class LoginSocial extends ImageChatevent
    implements Built<LoginSocial, LoginSocialBuilder> {
  LoginSocial._();

  String? get  fcmToken;
  String? get Token;
  factory LoginSocial([updates(LoginSocialBuilder b)]) = _$LoginSocial;
}


abstract class LoginGoogle extends ImageChatevent
    implements Built<LoginGoogle, LoginGoogleBuilder> {
  LoginGoogle._();

String? get Email;
String? get name;
String? get fcmToken;
String? get avatar;
  factory LoginGoogle([updates(LoginGoogleBuilder b)]) = _$LoginGoogle;
}

abstract class ClearError extends ImageChatevent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();
  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class SetPermission extends ImageChatevent
    implements Built<SetPermission, SetPermissionBuilder> {
  SetPermission._();
  int? get is_notify;
  factory SetPermission([updates(SetPermissionBuilder b)]) = _$SetPermission;
}

abstract class LoginWithPhone extends ImageChatevent
    implements  Built<LoginWithPhone,LoginWithPhoneBuilder> {
  String? get Phone;
  String? get fcmToken;
  LoginWithPhone._();
  factory LoginWithPhone([updates(LoginWithPhoneBuilder b)]) = _$LoginWithPhone;
}
abstract class ChangeIconStatus extends ImageChatevent
    implements  Built<ChangeIconStatus,ChangeIconStatusBuilder> {

  ChangeIconStatus._();
  factory ChangeIconStatus([updates(ChangeIconStatusBuilder b)]) = _$ChangeIconStatus;
}
abstract class ChangeCheckBoxStatus extends ImageChatevent
    implements  Built<ChangeCheckBoxStatus,ChangeCheckBoxStatusBuilder> {

  ChangeCheckBoxStatus._();
  factory ChangeCheckBoxStatus([updates(ChangeCheckBoxStatusBuilder b)]) = _$ChangeCheckBoxStatus;
}






