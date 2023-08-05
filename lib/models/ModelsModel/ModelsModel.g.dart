// GENERATED CODE - DO NOT MODIFY BY HAND

part of ModelsModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModelsModel> _$modelsModelSerializer = new _$ModelsModelSerializer();

class _$ModelsModelSerializer implements StructuredSerializer<ModelsModel> {
  @override
  final Iterable<Type> types = const [ModelsModel, _$ModelsModel];
  @override
  final String wireName = 'ModelsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ModelsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ModelsData)));
    }
    return result;
  }

  @override
  ModelsModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'object':
          result.object = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(ModelsData))! as ModelsData);
          break;
      }
    }

    return result.build();
  }
}

class _$ModelsModel extends ModelsModel {
  @override
  final String? object;
  @override
  final ModelsData? data;

  factory _$ModelsModel([void Function(ModelsModelBuilder)? updates]) =>
      (new ModelsModelBuilder()..update(updates))._build();

  _$ModelsModel._({this.object, this.data}) : super._();

  @override
  ModelsModel rebuild(void Function(ModelsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelsModelBuilder toBuilder() => new ModelsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelsModel && object == other.object && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, object.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelsModel')
          ..add('object', object)
          ..add('data', data))
        .toString();
  }
}

class ModelsModelBuilder implements Builder<ModelsModel, ModelsModelBuilder> {
  _$ModelsModel? _$v;

  String? _object;
  String? get object => _$this._object;
  set object(String? object) => _$this._object = object;

  ModelsDataBuilder? _data;
  ModelsDataBuilder get data => _$this._data ??= new ModelsDataBuilder();
  set data(ModelsDataBuilder? data) => _$this._data = data;

  ModelsModelBuilder();

  ModelsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _object = $v.object;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelsModel;
  }

  @override
  void update(void Function(ModelsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelsModel build() => _build();

  _$ModelsModel _build() {
    _$ModelsModel _$result;
    try {
      _$result =
          _$v ?? new _$ModelsModel._(object: object, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModelsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
