// GENERATED CODE - DO NOT MODIFY BY HAND

part of ImageModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageModel> _$imageModelSerializer = new _$ImageModelSerializer();

class _$ImageModelSerializer implements StructuredSerializer<ImageModel> {
  @override
  final Iterable<Type> types = const [ImageModel, _$ImageModel];
  @override
  final String wireName = 'ImageModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageModel extends ImageModel {
  @override
  final String? url;

  factory _$ImageModel([void Function(ImageModelBuilder)? updates]) =>
      (new ImageModelBuilder()..update(updates))._build();

  _$ImageModel._({this.url}) : super._();

  @override
  ImageModel rebuild(void Function(ImageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageModelBuilder toBuilder() => new ImageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageModel && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageModel')..add('url', url))
        .toString();
  }
}

class ImageModelBuilder implements Builder<ImageModel, ImageModelBuilder> {
  _$ImageModel? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ImageModelBuilder();

  ImageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageModel;
  }

  @override
  void update(void Function(ImageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageModel build() => _build();

  _$ImageModel _build() {
    final _$result = _$v ?? new _$ImageModel._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
