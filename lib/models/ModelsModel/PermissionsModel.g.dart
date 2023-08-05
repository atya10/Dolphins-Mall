// GENERATED CODE - DO NOT MODIFY BY HAND

part of PermissionsModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PermissionsModel> _$permissionsModelSerializer =
    new _$PermissionsModelSerializer();

class _$PermissionsModelSerializer
    implements StructuredSerializer<PermissionsModel> {
  @override
  final Iterable<Type> types = const [PermissionsModel, _$PermissionsModel];
  @override
  final String wireName = 'PermissionsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PermissionsModel object,
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
    return result;
  }

  @override
  PermissionsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PermissionsModelBuilder();

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
      }
    }

    return result.build();
  }
}

class _$PermissionsModel extends PermissionsModel {
  @override
  final String? id;

  factory _$PermissionsModel(
          [void Function(PermissionsModelBuilder)? updates]) =>
      (new PermissionsModelBuilder()..update(updates))._build();

  _$PermissionsModel._({this.id}) : super._();

  @override
  PermissionsModel rebuild(void Function(PermissionsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionsModelBuilder toBuilder() =>
      new PermissionsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionsModel && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionsModel')..add('id', id))
        .toString();
  }
}

class PermissionsModelBuilder
    implements Builder<PermissionsModel, PermissionsModelBuilder> {
  _$PermissionsModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PermissionsModelBuilder();

  PermissionsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PermissionsModel;
  }

  @override
  void update(void Function(PermissionsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionsModel build() => _build();

  _$PermissionsModel _build() {
    final _$result = _$v ?? new _$PermissionsModel._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
