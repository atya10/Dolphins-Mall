// GENERATED CODE - DO NOT MODIFY BY HAND

part of GetgenderModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetgenderModel> _$getgenderModelSerializer =
    new _$GetgenderModelSerializer();

class _$GetgenderModelSerializer
    implements StructuredSerializer<GetgenderModel> {
  @override
  final Iterable<Type> types = const [GetgenderModel, _$GetgenderModel];
  @override
  final String wireName = 'GetgenderModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetgenderModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.msg;
    if (value != null) {
      result
        ..add('msg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statuscode;
    if (value != null) {
      result
        ..add('statuscode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.genders;
    if (value != null) {
      result
        ..add('genders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenderslistModel)])));
    }
    return result;
  }

  @override
  GetgenderModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetgenderModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statuscode':
          result.statuscode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'genders':
          result.genders.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenderslistModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GetgenderModel extends GetgenderModel {
  @override
  final String? msg;
  @override
  final int? statuscode;
  @override
  final BuiltList<GenderslistModel>? genders;

  factory _$GetgenderModel([void Function(GetgenderModelBuilder)? updates]) =>
      (new GetgenderModelBuilder()..update(updates))._build();

  _$GetgenderModel._({this.msg, this.statuscode, this.genders}) : super._();

  @override
  GetgenderModel rebuild(void Function(GetgenderModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetgenderModelBuilder toBuilder() =>
      new GetgenderModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetgenderModel &&
        msg == other.msg &&
        statuscode == other.statuscode &&
        genders == other.genders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, statuscode.hashCode);
    _$hash = $jc(_$hash, genders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetgenderModel')
          ..add('msg', msg)
          ..add('statuscode', statuscode)
          ..add('genders', genders))
        .toString();
  }
}

class GetgenderModelBuilder
    implements Builder<GetgenderModel, GetgenderModelBuilder> {
  _$GetgenderModel? _$v;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  int? _statuscode;
  int? get statuscode => _$this._statuscode;
  set statuscode(int? statuscode) => _$this._statuscode = statuscode;

  ListBuilder<GenderslistModel>? _genders;
  ListBuilder<GenderslistModel> get genders =>
      _$this._genders ??= new ListBuilder<GenderslistModel>();
  set genders(ListBuilder<GenderslistModel>? genders) =>
      _$this._genders = genders;

  GetgenderModelBuilder();

  GetgenderModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _msg = $v.msg;
      _statuscode = $v.statuscode;
      _genders = $v.genders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetgenderModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetgenderModel;
  }

  @override
  void update(void Function(GetgenderModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetgenderModel build() => _build();

  _$GetgenderModel _build() {
    _$GetgenderModel _$result;
    try {
      _$result = _$v ??
          new _$GetgenderModel._(
              msg: msg, statuscode: statuscode, genders: _genders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genders';
        _genders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetgenderModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
