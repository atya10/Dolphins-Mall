// GENERATED CODE - DO NOT MODIFY BY HAND

part of ChatModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatModel> _$chatModelSerializer = new _$ChatModelSerializer();

class _$ChatModelSerializer implements StructuredSerializer<ChatModel> {
  @override
  final Iterable<Type> types = const [ChatModel, _$ChatModel];
  @override
  final String wireName = 'ChatModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.choices;
    if (value != null) {
      result
        ..add('choices')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ChoicesModel)])));
    }
    value = object.usage;
    if (value != null) {
      result
        ..add('usage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UsageModel)));
    }
    return result;
  }

  @override
  ChatModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'object':
          result.object = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'choices':
          result.choices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ChoicesModel)]))!
              as BuiltList<Object?>);
          break;
        case 'usage':
          result.usage.replace(serializers.deserialize(value,
              specifiedType: const FullType(UsageModel))! as UsageModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ChatModel extends ChatModel {
  @override
  final String? id;
  @override
  final String? object;
  @override
  final String? model;
  @override
  final int? created;
  @override
  final BuiltList<ChoicesModel>? choices;
  @override
  final UsageModel? usage;

  factory _$ChatModel([void Function(ChatModelBuilder)? updates]) =>
      (new ChatModelBuilder()..update(updates))._build();

  _$ChatModel._(
      {this.id,
      this.object,
      this.model,
      this.created,
      this.choices,
      this.usage})
      : super._();

  @override
  ChatModel rebuild(void Function(ChatModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatModelBuilder toBuilder() => new ChatModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatModel &&
        id == other.id &&
        object == other.object &&
        model == other.model &&
        created == other.created &&
        choices == other.choices &&
        usage == other.usage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, object.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, choices.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatModel')
          ..add('id', id)
          ..add('object', object)
          ..add('model', model)
          ..add('created', created)
          ..add('choices', choices)
          ..add('usage', usage))
        .toString();
  }
}

class ChatModelBuilder implements Builder<ChatModel, ChatModelBuilder> {
  _$ChatModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _object;
  String? get object => _$this._object;
  set object(String? object) => _$this._object = object;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  ListBuilder<ChoicesModel>? _choices;
  ListBuilder<ChoicesModel> get choices =>
      _$this._choices ??= new ListBuilder<ChoicesModel>();
  set choices(ListBuilder<ChoicesModel>? choices) => _$this._choices = choices;

  UsageModelBuilder? _usage;
  UsageModelBuilder get usage => _$this._usage ??= new UsageModelBuilder();
  set usage(UsageModelBuilder? usage) => _$this._usage = usage;

  ChatModelBuilder();

  ChatModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _object = $v.object;
      _model = $v.model;
      _created = $v.created;
      _choices = $v.choices?.toBuilder();
      _usage = $v.usage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatModel;
  }

  @override
  void update(void Function(ChatModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatModel build() => _build();

  _$ChatModel _build() {
    _$ChatModel _$result;
    try {
      _$result = _$v ??
          new _$ChatModel._(
              id: id,
              object: object,
              model: model,
              created: created,
              choices: _choices?.build(),
              usage: _usage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'choices';
        _choices?.build();
        _$failedField = 'usage';
        _usage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
