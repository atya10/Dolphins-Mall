
library ChoicesModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/ChatModel/MessageModel.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'ChoicesModel.g.dart';

abstract class ChoicesModel
    implements Built<ChoicesModel,ChoicesModelBuilder> {

 MessageModel? get message;
  String? get finish_reason;
  int? get index;


  ChoicesModel._();
  factory ChoicesModel([void Function(ChoicesModelBuilder b)? updates]) =  _$ChoicesModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ChoicesModel.serializer, this));
  }
  static ChoicesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ChoicesModel.serializer, json.decode(jsonString));
  }

  static Serializer<ChoicesModel> get serializer => _$choicesModelSerializer;
}

