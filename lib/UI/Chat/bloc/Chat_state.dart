library Chat_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/UI/Chat/pages/ChatPage.dart';
import 'package:dolphins_mall/models/ChatModel/ChatModel.dart';

part 'Chat_state.g.dart';

abstract class ChatState implements Built<ChatState, ChatStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  ChatModel? get data;
  List<ChatComponents>? get chatList;

  // UserData? get data;
  // // PermissionsModel? get Permissions;
  // bool? get ShowPass_IconStatus;
  // bool? get CheckboxStatus;
  // List<String>? get countries;
  ChatState._();

  factory ChatState([updates(ChatStateBuilder b)]) = _$ChatState;

  factory ChatState.initail() {
    return ChatState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..data = null
      ..chatList = []
      // ..ShowPass_IconStatus = false
      // ..CheckboxStatus = false
      // // ..data = null
      // //   ..Permissions = null
      // //   ..countries = []

    );
  }
}
