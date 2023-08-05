//
library MessageModel;


import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'MessageModel.g.dart';

abstract class MessageModel implements Built<MessageModel,MessageModelBuilder> {

  String? get role;
  String? get content;



  MessageModel._();
  factory MessageModel([void Function(MessageModelBuilder b)? updates]) =  _$MessageModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MessageModel.serializer, this));
  }
  static MessageModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        MessageModel.serializer, json.decode(jsonString));
  }

  static Serializer<MessageModel> get serializer => _$messageModelSerializer;
}

