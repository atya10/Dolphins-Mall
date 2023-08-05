library ChatModel;


import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/ChatModel/ChoicesModel.dart';
import 'package:dolphins_mall/models/ChatModel/UsageModel.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'ChatModel.g.dart';

abstract class ChatModel implements Built<ChatModel,ChatModelBuilder> {

  String? get id;
  String? get object;
  String? get model;
  int? get created;
  BuiltList<ChoicesModel>? get choices;
  UsageModel? get usage;

  ChatModel._();
  factory ChatModel([void Function(ChatModelBuilder b)? updates]) =  _$ChatModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ChatModel.serializer, this));
  }
  static ChatModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ChatModel.serializer, json.decode(jsonString));
  }

  static Serializer<ChatModel> get serializer => _$chatModelSerializer;
}

