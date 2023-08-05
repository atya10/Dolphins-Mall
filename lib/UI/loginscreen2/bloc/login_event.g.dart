// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostLOgin extends PostLOgin {
  @override
  final String? Email;
  @override
  final String? password;
  @override
  final String? fcmToken;

  factory _$PostLOgin([void Function(PostLOginBuilder)? updates]) =>
      (new PostLOginBuilder()..update(updates))._build();

  _$PostLOgin._({this.Email, this.password, this.fcmToken}) : super._();

  @override
  PostLOgin rebuild(void Function(PostLOginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostLOginBuilder toBuilder() => new PostLOginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostLOgin &&
        Email == other.Email &&
        password == other.password &&
        fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostLOgin')
          ..add('Email', Email)
          ..add('password', password)
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class PostLOginBuilder implements Builder<PostLOgin, PostLOginBuilder> {
  _$PostLOgin? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  PostLOginBuilder();

  PostLOginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _password = $v.password;
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostLOgin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostLOgin;
  }

  @override
  void update(void Function(PostLOginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostLOgin build() => _build();

  _$PostLOgin _build() {
    final _$result = _$v ??
        new _$PostLOgin._(Email: Email, password: password, fcmToken: fcmToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
