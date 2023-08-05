// GENERATED CODE - DO NOT MODIFY BY HAND

part of GenderslistModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenderslistModel> _$genderslistModelSerializer =
    new _$GenderslistModelSerializer();

class _$GenderslistModelSerializer
    implements StructuredSerializer<GenderslistModel> {
  @override
  final Iterable<Type> types = const [GenderslistModel, _$GenderslistModel];
  @override
  final String wireName = 'GenderslistModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, GenderslistModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GenderslistModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenderslistModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GenderslistModel extends GenderslistModel {
  @override
  final String? title;
  @override
  final String? image;
  @override
  final int? id;
  @override
  final int? type;

  factory _$GenderslistModel(
          [void Function(GenderslistModelBuilder)? updates]) =>
      (new GenderslistModelBuilder()..update(updates))._build();

  _$GenderslistModel._({this.title, this.image, this.id, this.type})
      : super._();

  @override
  GenderslistModel rebuild(void Function(GenderslistModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenderslistModelBuilder toBuilder() =>
      new GenderslistModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenderslistModel &&
        title == other.title &&
        image == other.image &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GenderslistModel')
          ..add('title', title)
          ..add('image', image)
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class GenderslistModelBuilder
    implements Builder<GenderslistModel, GenderslistModelBuilder> {
  _$GenderslistModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  GenderslistModelBuilder();

  GenderslistModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _image = $v.image;
      _id = $v.id;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenderslistModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenderslistModel;
  }

  @override
  void update(void Function(GenderslistModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenderslistModel build() => _build();

  _$GenderslistModel _build() {
    final _$result = _$v ??
        new _$GenderslistModel._(
            title: title, image: image, id: id, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
