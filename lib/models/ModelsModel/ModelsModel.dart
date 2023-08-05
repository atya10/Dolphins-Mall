library ModelsModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/ModelsModel/ModelsData.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'ModelsModel.g.dart';

abstract class ModelsModel
    implements Built<ModelsModel,ModelsModelBuilder> {

  String? get object;
  ModelsData? get data;

  ModelsModel._();
  factory ModelsModel([void Function(ModelsModelBuilder b)? updates]) =  _$ModelsModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ModelsModel.serializer, this));
  }
  static ModelsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ModelsModel.serializer, json.decode(jsonString));
  }

  static Serializer<ModelsModel> get serializer => _$modelsModelSerializer;
}

