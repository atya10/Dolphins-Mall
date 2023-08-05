library ImageModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'ImageModel.g.dart';

abstract class ImageModel
    implements Built<ImageModel,ImageModelBuilder> {

  String? get url;

  ImageModel._();
  factory ImageModel([void Function(ImageModelBuilder b)? updates]) =  _$ImageModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ImageModel.serializer, this));
  }
  static ImageModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ImageModel.serializer, json.decode(jsonString));
  }

  static Serializer<ImageModel> get serializer => _$imageModelSerializer;
}

