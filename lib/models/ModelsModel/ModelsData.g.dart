// GENERATED CODE - DO NOT MODIFY BY HAND

part of ModelsData;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModelsData> _$modelsDataSerializer = new _$ModelsDataSerializer();

class _$ModelsDataSerializer implements StructuredSerializer<ModelsData> {
  @override
  final Iterable<Type> types = const [ModelsData, _$ModelsData];
  @override
  final String wireName = 'ModelsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, ModelsData object,
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
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.owned_by;
    if (value != null) {
      result
        ..add('owned_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.root;
    if (value != null) {
      result
        ..add('root')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parent;
    if (value != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.permission;
    if (value != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PermissionsModel)])));
    }
    return result;
  }

  @override
  ModelsData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelsDataBuilder();

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
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'object':
          result.object = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owned_by':
          result.owned_by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'root':
          result.root = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parent':
          result.parent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'permission':
          result.permission.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PermissionsModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ModelsData extends ModelsData {
  @override
  final String? id;
  @override
  final int? created;
  @override
  final String? object;
  @override
  final String? owned_by;
  @override
  final String? root;
  @override
  final String? parent;
  @override
  final BuiltList<PermissionsModel>? permission;

  factory _$ModelsData([void Function(ModelsDataBuilder)? updates]) =>
      (new ModelsDataBuilder()..update(updates))._build();

  _$ModelsData._(
      {this.id,
      this.created,
      this.object,
      this.owned_by,
      this.root,
      this.parent,
      this.permission})
      : super._();

  @override
  ModelsData rebuild(void Function(ModelsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelsDataBuilder toBuilder() => new ModelsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelsData &&
        id == other.id &&
        created == other.created &&
        object == other.object &&
        owned_by == other.owned_by &&
        root == other.root &&
        parent == other.parent &&
        permission == other.permission;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, object.hashCode);
    _$hash = $jc(_$hash, owned_by.hashCode);
    _$hash = $jc(_$hash, root.hashCode);
    _$hash = $jc(_$hash, parent.hashCode);
    _$hash = $jc(_$hash, permission.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelsData')
          ..add('id', id)
          ..add('created', created)
          ..add('object', object)
          ..add('owned_by', owned_by)
          ..add('root', root)
          ..add('parent', parent)
          ..add('permission', permission))
        .toString();
  }
}

class ModelsDataBuilder implements Builder<ModelsData, ModelsDataBuilder> {
  _$ModelsData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  String? _object;
  String? get object => _$this._object;
  set object(String? object) => _$this._object = object;

  String? _owned_by;
  String? get owned_by => _$this._owned_by;
  set owned_by(String? owned_by) => _$this._owned_by = owned_by;

  String? _root;
  String? get root => _$this._root;
  set root(String? root) => _$this._root = root;

  String? _parent;
  String? get parent => _$this._parent;
  set parent(String? parent) => _$this._parent = parent;

  ListBuilder<PermissionsModel>? _permission;
  ListBuilder<PermissionsModel> get permission =>
      _$this._permission ??= new ListBuilder<PermissionsModel>();
  set permission(ListBuilder<PermissionsModel>? permission) =>
      _$this._permission = permission;

  ModelsDataBuilder();

  ModelsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _created = $v.created;
      _object = $v.object;
      _owned_by = $v.owned_by;
      _root = $v.root;
      _parent = $v.parent;
      _permission = $v.permission?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelsData;
  }

  @override
  void update(void Function(ModelsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelsData build() => _build();

  _$ModelsData _build() {
    _$ModelsData _$result;
    try {
      _$result = _$v ??
          new _$ModelsData._(
              id: id,
              created: created,
              object: object,
              owned_by: owned_by,
              root: root,
              parent: parent,
              permission: _permission?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permission';
        _permission?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModelsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
