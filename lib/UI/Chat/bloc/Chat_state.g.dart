// GENERATED CODE - DO NOT MODIFY BY HAND

part of Chat_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatState extends ChatState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final ChatModel? data;
  @override
  final List<ChatComponents>? chatList;

  factory _$ChatState([void Function(ChatStateBuilder)? updates]) =>
      (new ChatStateBuilder()..update(updates))._build();

  _$ChatState._(
      {this.error, this.isLoading, this.success, this.data, this.chatList})
      : super._();

  @override
  ChatState rebuild(void Function(ChatStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatStateBuilder toBuilder() => new ChatStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        data == other.data &&
        chatList == other.chatList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, chatList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('data', data)
          ..add('chatList', chatList))
        .toString();
  }
}

class ChatStateBuilder implements Builder<ChatState, ChatStateBuilder> {
  _$ChatState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ChatModelBuilder? _data;
  ChatModelBuilder get data => _$this._data ??= new ChatModelBuilder();
  set data(ChatModelBuilder? data) => _$this._data = data;

  List<ChatComponents>? _chatList;
  List<ChatComponents>? get chatList => _$this._chatList;
  set chatList(List<ChatComponents>? chatList) => _$this._chatList = chatList;

  ChatStateBuilder();

  ChatStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _chatList = $v.chatList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatState;
  }

  @override
  void update(void Function(ChatStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatState build() => _build();

  _$ChatState _build() {
    _$ChatState _$result;
    try {
      _$result = _$v ??
          new _$ChatState._(
              error: error,
              isLoading: isLoading,
              success: success,
              data: _data?.build(),
              chatList: chatList);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
