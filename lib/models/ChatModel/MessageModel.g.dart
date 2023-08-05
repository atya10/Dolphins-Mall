// GENERATED CODE - DO NOT MODIFY BY HAND

part of MessageModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageModel> _$messageModelSerializer =
    new _$MessageModelSerializer();

class _$MessageModelSerializer implements StructuredSerializer<MessageModel> {
  @override
  final Iterable<Type> types = const [MessageModel, _$MessageModel];
  @override
  final String wireName = 'MessageModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MessageModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MessageModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MessageModel extends MessageModel {
  @override
  final String? role;
  @override
  final String? content;

  factory _$MessageModel([void Function(MessageModelBuilder)? updates]) =>
      (new MessageModelBuilder()..update(updates))._build();

  _$MessageModel._({this.role, this.content}) : super._();

  @override
  MessageModel rebuild(void Function(MessageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageModelBuilder toBuilder() => new MessageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageModel &&
        role == other.role &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessageModel')
          ..add('role', role)
          ..add('content', content))
        .toString();
  }
}

class MessageModelBuilder
    implements Builder<MessageModel, MessageModelBuilder> {
  _$MessageModel? _$v;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  MessageModelBuilder();

  MessageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageModel;
  }

  @override
  void update(void Function(MessageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessageModel build() => _build();

  _$MessageModel _build() {
    final _$result = _$v ?? new _$MessageModel._(role: role, content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
