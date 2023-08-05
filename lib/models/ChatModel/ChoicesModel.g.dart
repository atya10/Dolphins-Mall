// GENERATED CODE - DO NOT MODIFY BY HAND

part of ChoicesModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChoicesModel> _$choicesModelSerializer =
    new _$ChoicesModelSerializer();

class _$ChoicesModelSerializer implements StructuredSerializer<ChoicesModel> {
  @override
  final Iterable<Type> types = const [ChoicesModel, _$ChoicesModel];
  @override
  final String wireName = 'ChoicesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChoicesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MessageModel)));
    }
    value = object.finish_reason;
    if (value != null) {
      result
        ..add('finish_reason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ChoicesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChoicesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message.replace(serializers.deserialize(value,
              specifiedType: const FullType(MessageModel))! as MessageModel);
          break;
        case 'finish_reason':
          result.finish_reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$ChoicesModel extends ChoicesModel {
  @override
  final MessageModel? message;
  @override
  final String? finish_reason;
  @override
  final int? index;

  factory _$ChoicesModel([void Function(ChoicesModelBuilder)? updates]) =>
      (new ChoicesModelBuilder()..update(updates))._build();

  _$ChoicesModel._({this.message, this.finish_reason, this.index}) : super._();

  @override
  ChoicesModel rebuild(void Function(ChoicesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChoicesModelBuilder toBuilder() => new ChoicesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChoicesModel &&
        message == other.message &&
        finish_reason == other.finish_reason &&
        index == other.index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, finish_reason.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChoicesModel')
          ..add('message', message)
          ..add('finish_reason', finish_reason)
          ..add('index', index))
        .toString();
  }
}

class ChoicesModelBuilder
    implements Builder<ChoicesModel, ChoicesModelBuilder> {
  _$ChoicesModel? _$v;

  MessageModelBuilder? _message;
  MessageModelBuilder get message =>
      _$this._message ??= new MessageModelBuilder();
  set message(MessageModelBuilder? message) => _$this._message = message;

  String? _finish_reason;
  String? get finish_reason => _$this._finish_reason;
  set finish_reason(String? finish_reason) =>
      _$this._finish_reason = finish_reason;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ChoicesModelBuilder();

  ChoicesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message?.toBuilder();
      _finish_reason = $v.finish_reason;
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChoicesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChoicesModel;
  }

  @override
  void update(void Function(ChoicesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChoicesModel build() => _build();

  _$ChoicesModel _build() {
    _$ChoicesModel _$result;
    try {
      _$result = _$v ??
          new _$ChoicesModel._(
              message: _message?.build(),
              finish_reason: finish_reason,
              index: index);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        _message?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChoicesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
