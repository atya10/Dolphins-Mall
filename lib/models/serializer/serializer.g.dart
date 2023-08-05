// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ChatModel.serializer)
      ..add(ChoicesModel.serializer)
      ..add(ImageModel.serializer)
      ..add(MessageModel.serializer)
      ..add(ModelsData.serializer)
      ..add(ModelsModel.serializer)
      ..add(PermissionsModel.serializer)
      ..add(UsageModel.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChoicesModel)]),
          () => new ListBuilder<ChoicesModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PermissionsModel)]),
          () => new ListBuilder<PermissionsModel>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
