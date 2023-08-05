// GENERATED CODE - DO NOT MODIFY BY HAND

part of UsageModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsageModel> _$usageModelSerializer = new _$UsageModelSerializer();

class _$UsageModelSerializer implements StructuredSerializer<UsageModel> {
  @override
  final Iterable<Type> types = const [UsageModel, _$UsageModel];
  @override
  final String wireName = 'UsageModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsageModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.prompt_tokens;
    if (value != null) {
      result
        ..add('prompt_tokens')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.completion_tokens;
    if (value != null) {
      result
        ..add('completion_tokens')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.total_tokens;
    if (value != null) {
      result
        ..add('total_tokens')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UsageModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsageModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'prompt_tokens':
          result.prompt_tokens = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'completion_tokens':
          result.completion_tokens = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_tokens':
          result.total_tokens = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsageModel extends UsageModel {
  @override
  final int? prompt_tokens;
  @override
  final int? completion_tokens;
  @override
  final int? total_tokens;

  factory _$UsageModel([void Function(UsageModelBuilder)? updates]) =>
      (new UsageModelBuilder()..update(updates))._build();

  _$UsageModel._(
      {this.prompt_tokens, this.completion_tokens, this.total_tokens})
      : super._();

  @override
  UsageModel rebuild(void Function(UsageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsageModelBuilder toBuilder() => new UsageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsageModel &&
        prompt_tokens == other.prompt_tokens &&
        completion_tokens == other.completion_tokens &&
        total_tokens == other.total_tokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prompt_tokens.hashCode);
    _$hash = $jc(_$hash, completion_tokens.hashCode);
    _$hash = $jc(_$hash, total_tokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsageModel')
          ..add('prompt_tokens', prompt_tokens)
          ..add('completion_tokens', completion_tokens)
          ..add('total_tokens', total_tokens))
        .toString();
  }
}

class UsageModelBuilder implements Builder<UsageModel, UsageModelBuilder> {
  _$UsageModel? _$v;

  int? _prompt_tokens;
  int? get prompt_tokens => _$this._prompt_tokens;
  set prompt_tokens(int? prompt_tokens) =>
      _$this._prompt_tokens = prompt_tokens;

  int? _completion_tokens;
  int? get completion_tokens => _$this._completion_tokens;
  set completion_tokens(int? completion_tokens) =>
      _$this._completion_tokens = completion_tokens;

  int? _total_tokens;
  int? get total_tokens => _$this._total_tokens;
  set total_tokens(int? total_tokens) => _$this._total_tokens = total_tokens;

  UsageModelBuilder();

  UsageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prompt_tokens = $v.prompt_tokens;
      _completion_tokens = $v.completion_tokens;
      _total_tokens = $v.total_tokens;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsageModel;
  }

  @override
  void update(void Function(UsageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsageModel build() => _build();

  _$UsageModel _build() {
    final _$result = _$v ??
        new _$UsageModel._(
            prompt_tokens: prompt_tokens,
            completion_tokens: completion_tokens,
            total_tokens: total_tokens);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
