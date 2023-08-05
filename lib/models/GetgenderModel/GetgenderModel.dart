library GetgenderModel;


import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/ChatModel/ChoicesModel.dart';
import 'package:dolphins_mall/models/ChatModel/UsageModel.dart';
import 'package:dolphins_mall/models/GetgenderModel/GenderslistModel.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'GetgenderModel.g.dart';

abstract class GetgenderModel implements Built<GetgenderModel,GetgenderModelBuilder> {
  String? get msg;
  int? get statuscode;
  // String? get id;
  // String? get object;
  // String? get model;
  // int? get created;
  BuiltList<GenderslistModel>? get genders;

  GetgenderModel._();
  factory GetgenderModel([void Function(GetgenderModelBuilder b)? updates]) =  _$GetgenderModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetgenderModel.serializer, this));
  }
  static GetgenderModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetgenderModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetgenderModel> get serializer => _$getgenderModelSerializer;
}

