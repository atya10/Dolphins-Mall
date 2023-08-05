//GenderslistModel


library GenderslistModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:dolphins_mall/models/ChatModel/MessageModel.dart';
import 'package:dolphins_mall/models/serializer/serializer.dart';

part 'GenderslistModel.g.dart';

abstract class GenderslistModel
    implements Built<GenderslistModel,GenderslistModelBuilder> {

  //MessageModel? get message;
  String? get title;
  String? get image;
  int? get id;
  int? get type;

  // {
  // "id": 10,
  // "title": "Bigender",
  // "type": 2,
  // "image": "https://saedyounis.com/public/storage/gender/Wk0pATcbKLfRfClfI7TYkzcExxxd3U4KN8gMKJ8d.png"
  // },
  GenderslistModel._();
  factory GenderslistModel([void Function(GenderslistModelBuilder b)? updates]) =  _$GenderslistModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GenderslistModel.serializer, this));
  }
  static GenderslistModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GenderslistModel.serializer, json.decode(jsonString));
  }

  static Serializer<GenderslistModel> get serializer => _$genderslistModelSerializer;
}

