//
//
//
library PermissionsModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'PermissionsModel.g.dart';

abstract class PermissionsModel
    implements Built<PermissionsModel,PermissionsModelBuilder> {

  String? get id;


  PermissionsModel._();
  factory PermissionsModel([void Function(PermissionsModelBuilder b)? updates]) =  _$PermissionsModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PermissionsModel.serializer, this));
  }
  static PermissionsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PermissionsModel.serializer, json.decode(jsonString));
  }

  static Serializer<PermissionsModel> get serializer => _$permissionsModelSerializer;
}

