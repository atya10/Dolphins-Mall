//
//
library ModelsData;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/ModelsModel/PermissionsModel.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'ModelsData.g.dart';

abstract class ModelsData
    implements Built<ModelsData,ModelsDataBuilder> {

  String? get id;
  int? get created;
  String? get object;
  String? get owned_by;
  String? get root;
  String? get parent;

  BuiltList<PermissionsModel>? get permission;




  ModelsData._();
  factory ModelsData([void Function(ModelsDataBuilder b)? updates]) =  _$ModelsData;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ModelsData.serializer, this));
  }
  static ModelsData? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ModelsData.serializer, json.decode(jsonString));
  }

  static Serializer<ModelsData> get serializer => _$modelsDataSerializer;
}

