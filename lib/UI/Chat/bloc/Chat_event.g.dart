// GENERATED CODE - DO NOT MODIFY BY HAND

part of Chat_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendMessage extends SendMessage {
  @override
  final String? Msg;
  @override
  final String? Model;

  factory _$SendMessage([void Function(SendMessageBuilder)? updates]) =>
      (new SendMessageBuilder()..update(updates))._build();

  _$SendMessage._({this.Msg, this.Model}) : super._();

  @override
  SendMessage rebuild(void Function(SendMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendMessageBuilder toBuilder() => new SendMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendMessage && Msg == other.Msg && Model == other.Model;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Msg.hashCode);
    _$hash = $jc(_$hash, Model.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendMessage')
          ..add('Msg', Msg)
          ..add('Model', Model))
        .toString();
  }
}

class SendMessageBuilder implements Builder<SendMessage, SendMessageBuilder> {
  _$SendMessage? _$v;

  String? _Msg;
  String? get Msg => _$this._Msg;
  set Msg(String? Msg) => _$this._Msg = Msg;

  String? _Model;
  String? get Model => _$this._Model;
  set Model(String? Model) => _$this._Model = Model;

  SendMessageBuilder();

  SendMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Msg = $v.Msg;
      _Model = $v.Model;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendMessage;
  }

  @override
  void update(void Function(SendMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendMessage build() => _build();

  _$SendMessage _build() {
    final _$result = _$v ?? new _$SendMessage._(Msg: Msg, Model: Model);
    replace(_$result);
    return _$result;
  }
}

class _$SetChatComponents extends SetChatComponents {
  @override
  final String? Msg;
  @override
  final int? is_me;

  factory _$SetChatComponents(
          [void Function(SetChatComponentsBuilder)? updates]) =>
      (new SetChatComponentsBuilder()..update(updates))._build();

  _$SetChatComponents._({this.Msg, this.is_me}) : super._();

  @override
  SetChatComponents rebuild(void Function(SetChatComponentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetChatComponentsBuilder toBuilder() =>
      new SetChatComponentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetChatComponents &&
        Msg == other.Msg &&
        is_me == other.is_me;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Msg.hashCode);
    _$hash = $jc(_$hash, is_me.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetChatComponents')
          ..add('Msg', Msg)
          ..add('is_me', is_me))
        .toString();
  }
}

class SetChatComponentsBuilder
    implements Builder<SetChatComponents, SetChatComponentsBuilder> {
  _$SetChatComponents? _$v;

  String? _Msg;
  String? get Msg => _$this._Msg;
  set Msg(String? Msg) => _$this._Msg = Msg;

  int? _is_me;
  int? get is_me => _$this._is_me;
  set is_me(int? is_me) => _$this._is_me = is_me;

  SetChatComponentsBuilder();

  SetChatComponentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Msg = $v.Msg;
      _is_me = $v.is_me;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetChatComponents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetChatComponents;
  }

  @override
  void update(void Function(SetChatComponentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetChatComponents build() => _build();

  _$SetChatComponents _build() {
    final _$result = _$v ?? new _$SetChatComponents._(Msg: Msg, is_me: is_me);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
