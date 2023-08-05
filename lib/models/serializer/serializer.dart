library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dolphins_mall/models/ChatModel/ChatModel.dart';
import 'package:dolphins_mall/models/ChatModel/ChoicesModel.dart';
import 'package:dolphins_mall/models/ChatModel/MessageModel.dart';
import 'package:dolphins_mall/models/ChatModel/UsageModel.dart';
import 'package:dolphins_mall/models/ImageModel/ImageModel.dart';
import 'package:dolphins_mall/models/ModelsModel/ModelsData.dart';
import 'package:dolphins_mall/models/ModelsModel/ModelsModel.dart';
import 'package:dolphins_mall/models/ModelsModel/PermissionsModel.dart';


part 'serializer.g.dart';

@SerializersFor([
  ModelsData,
  PermissionsModel,
  ModelsModel,
  ChoicesModel,
  UsageModel,
  ChatModel,
  ImageModel,
  MessageModel,
])



final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(ModelsData),
        ],
      )),
          () => ListBuilder<ModelsData>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(MessageModel),
        ],
      )),
          () => ListBuilder<MessageModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(PermissionsModel),
        ],
      )),
          () => ListBuilder<PermissionsModel>())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(ModelsModel),
        ],
      )),
          () => ListBuilder<ModelsModel>())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(ChoicesModel),
        ],
      )),
          () => ListBuilder<ChoicesModel>())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(UsageModel),
        ],
      )),
          () => ListBuilder<UsageModel>())

  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(ChatModel),
        ],
      )),
          () => ListBuilder<ChatModel>())

      ..addBuilderFactory(
          (const FullType(
                BuiltList,
                [
                      FullType(ImageModel),
                ],
          )),
              () => ListBuilder<ImageModel>())

).build();
//Serializers used for converting json unUsed Code to a code of object
//which i can intract with and use serializer is one of the ways of handleing this
// json data thing. we have chosen this way because it gets genrated easily and
//fastly and has lots of features.

//Make sure you add the StandardJsonPlugin whenever you want to use the generated
// JSON with a RESTful API. By default, BuiltValue's JSON output aren't key-value
// pairs, but instead a list containing [key1, value1, key2, value2, ...]. This is
// not what most of the APIs expect.