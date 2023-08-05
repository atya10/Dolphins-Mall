library ImageChat_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ImageChat_state.g.dart';

abstract class ImageChatstate implements Built<ImageChatstate, ImageChatstateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  // UserData? get data;
  // PermissionsModel? get Permissions;

  bool? get ShowPass_IconStatus;
  bool? get CheckboxStatus;

  List<String>? get countries;
  ImageChatstate._();

  factory ImageChatstate([updates(ImageChatstateBuilder b)]) = _$ImageChatstate;

  factory ImageChatstate.initail() {
    return ImageChatstate((b) => b
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
