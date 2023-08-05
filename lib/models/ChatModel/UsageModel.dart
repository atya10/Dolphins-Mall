library UsageModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'UsageModel.g.dart';

abstract class UsageModel implements Built<UsageModel,UsageModelBuilder> {


  int? get prompt_tokens;
  int? get completion_tokens;
  int? get total_tokens;


  UsageModel._();
  factory UsageModel([void Function(UsageModelBuilder b)? updates]) =  _$UsageModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(UsageModel.serializer, this));
  }
  static UsageModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UsageModel.serializer, json.decode(jsonString));
  }

  static Serializer<UsageModel> get serializer => _$usageModelSerializer;
}

