// GENERATED CODE - DO NOT MODIFY BY HAND

part of ImageChat_event;

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

class _$SignInApple extends SignInApple {
  @override
  final String? Email;
  @override
  final String? fcmToken;
  @override
  final String? FirstName;
  @override
  final String? Lastname;

  factory _$SignInApple([void Function(SignInAppleBuilder)? updates]) =>
      (new SignInAppleBuilder()..update(updates))._build();

  _$SignInApple._({this.Email, this.fcmToken, this.FirstName, this.Lastname})
      : super._();

  @override
  SignInApple rebuild(void Function(SignInAppleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInAppleBuilder toBuilder() => new SignInAppleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignInApple &&
        Email == other.Email &&
        fcmToken == other.fcmToken &&
        FirstName == other.FirstName &&
        Lastname == other.Lastname;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, FirstName.hashCode);
    _$hash = $jc(_$hash, Lastname.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignInApple')
          ..add('Email', Email)
          ..add('fcmToken', fcmToken)
          ..add('FirstName', FirstName)
          ..add('Lastname', Lastname))
        .toString();
  }
}

class SignInAppleBuilder implements Builder<SignInApple, SignInAppleBuilder> {
  _$SignInApple? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  String? _FirstName;
  String? get FirstName => _$this._FirstName;
  set FirstName(String? FirstName) => _$this._FirstName = FirstName;

  String? _Lastname;
  String? get Lastname => _$this._Lastname;
  set Lastname(String? Lastname) => _$this._Lastname = Lastname;

  SignInAppleBuilder();

  SignInAppleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _fcmToken = $v.fcmToken;
      _FirstName = $v.FirstName;
      _Lastname = $v.Lastname;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignInApple other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignInApple;
  }

  @override
  void update(void Function(SignInAppleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignInApple build() => _build();

  _$SignInApple _build() {
    final _$result = _$v ??
        new _$SignInApple._(
            Email: Email,
            fcmToken: fcmToken,
            FirstName: FirstName,
            Lastname: Lastname);
    replace(_$result);
    return _$result;
  }
}

class _$LoginSocial extends LoginSocial {
  @override
  final String? fcmToken;
  @override
  final String? Token;

  factory _$LoginSocial([void Function(LoginSocialBuilder)? updates]) =>
      (new LoginSocialBuilder()..update(updates))._build();

  _$LoginSocial._({this.fcmToken, this.Token}) : super._();

  @override
  LoginSocial rebuild(void Function(LoginSocialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSocialBuilder toBuilder() => new LoginSocialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSocial &&
        fcmToken == other.fcmToken &&
        Token == other.Token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, Token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginSocial')
          ..add('fcmToken', fcmToken)
          ..add('Token', Token))
        .toString();
  }
}

class LoginSocialBuilder implements Builder<LoginSocial, LoginSocialBuilder> {
  _$LoginSocial? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  String? _Token;
  String? get Token => _$this._Token;
  set Token(String? Token) => _$this._Token = Token;

  LoginSocialBuilder();

  LoginSocialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _Token = $v.Token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginSocial other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginSocial;
  }

  @override
  void update(void Function(LoginSocialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginSocial build() => _build();

  _$LoginSocial _build() {
    final _$result =
        _$v ?? new _$LoginSocial._(fcmToken: fcmToken, Token: Token);
    replace(_$result);
    return _$result;
  }
}

class _$LoginGoogle extends LoginGoogle {
  @override
  final String? Email;
  @override
  final String? name;
  @override
  final String? fcmToken;
  @override
  final String? avatar;

  factory _$LoginGoogle([void Function(LoginGoogleBuilder)? updates]) =>
      (new LoginGoogleBuilder()..update(updates))._build();

  _$LoginGoogle._({this.Email, this.name, this.fcmToken, this.avatar})
      : super._();

  @override
  LoginGoogle rebuild(void Function(LoginGoogleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginGoogleBuilder toBuilder() => new LoginGoogleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginGoogle &&
        Email == other.Email &&
        name == other.name &&
        fcmToken == other.fcmToken &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginGoogle')
          ..add('Email', Email)
          ..add('name', name)
          ..add('fcmToken', fcmToken)
          ..add('avatar', avatar))
        .toString();
  }
}

class LoginGoogleBuilder implements Builder<LoginGoogle, LoginGoogleBuilder> {
  _$LoginGoogle? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  LoginGoogleBuilder();

  LoginGoogleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _name = $v.name;
      _fcmToken = $v.fcmToken;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginGoogle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginGoogle;
  }

  @override
  void update(void Function(LoginGoogleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginGoogle build() => _build();

  _$LoginGoogle _build() {
    final _$result = _$v ??
        new _$LoginGoogle._(
            Email: Email, name: name, fcmToken: fcmToken, avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder)? updates]) =>
      (new ClearErrorBuilder()..update(updates))._build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError? _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearError build() => _build();

  _$ClearError _build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$SetPermission extends SetPermission {
  @override
  final int? is_notify;

  factory _$SetPermission([void Function(SetPermissionBuilder)? updates]) =>
      (new SetPermissionBuilder()..update(updates))._build();

  _$SetPermission._({this.is_notify}) : super._();

  @override
  SetPermission rebuild(void Function(SetPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetPermissionBuilder toBuilder() => new SetPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetPermission && is_notify == other.is_notify;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, is_notify.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetPermission')
          ..add('is_notify', is_notify))
        .toString();
  }
}

class SetPermissionBuilder
    implements Builder<SetPermission, SetPermissionBuilder> {
  _$SetPermission? _$v;

  int? _is_notify;
  int? get is_notify => _$this._is_notify;
  set is_notify(int? is_notify) => _$this._is_notify = is_notify;

  SetPermissionBuilder();

  SetPermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _is_notify = $v.is_notify;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetPermission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetPermission;
  }

  @override
  void update(void Function(SetPermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetPermission build() => _build();

  _$SetPermission _build() {
    final _$result = _$v ?? new _$SetPermission._(is_notify: is_notify);
    replace(_$result);
    return _$result;
  }
}

class _$LoginWithPhone extends LoginWithPhone {
  @override
  final String? Phone;
  @override
  final String? fcmToken;

  factory _$LoginWithPhone([void Function(LoginWithPhoneBuilder)? updates]) =>
      (new LoginWithPhoneBuilder()..update(updates))._build();

  _$LoginWithPhone._({this.Phone, this.fcmToken}) : super._();

  @override
  LoginWithPhone rebuild(void Function(LoginWithPhoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginWithPhoneBuilder toBuilder() =>
      new LoginWithPhoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginWithPhone &&
        Phone == other.Phone &&
        fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Phone.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginWithPhone')
          ..add('Phone', Phone)
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class LoginWithPhoneBuilder
    implements Builder<LoginWithPhone, LoginWithPhoneBuilder> {
  _$LoginWithPhone? _$v;

  String? _Phone;
  String? get Phone => _$this._Phone;
  set Phone(String? Phone) => _$this._Phone = Phone;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  LoginWithPhoneBuilder();

  LoginWithPhoneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Phone = $v.Phone;
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginWithPhone other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginWithPhone;
  }

  @override
  void update(void Function(LoginWithPhoneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginWithPhone build() => _build();

  _$LoginWithPhone _build() {
    final _$result =
        _$v ?? new _$LoginWithPhone._(Phone: Phone, fcmToken: fcmToken);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeIconStatus extends ChangeIconStatus {
  factory _$ChangeIconStatus(
          [void Function(ChangeIconStatusBuilder)? updates]) =>
      (new ChangeIconStatusBuilder()..update(updates))._build();

  _$ChangeIconStatus._() : super._();

  @override
  ChangeIconStatus rebuild(void Function(ChangeIconStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeIconStatusBuilder toBuilder() =>
      new ChangeIconStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeIconStatus;
  }

  @override
  int get hashCode {
    return 426268391;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ChangeIconStatus').toString();
  }
}

class ChangeIconStatusBuilder
    implements Builder<ChangeIconStatus, ChangeIconStatusBuilder> {
  _$ChangeIconStatus? _$v;

  ChangeIconStatusBuilder();

  @override
  void replace(ChangeIconStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeIconStatus;
  }

  @override
  void update(void Function(ChangeIconStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeIconStatus build() => _build();

  _$ChangeIconStatus _build() {
    final _$result = _$v ?? new _$ChangeIconStatus._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCheckBoxStatus extends ChangeCheckBoxStatus {
  factory _$ChangeCheckBoxStatus(
          [void Function(ChangeCheckBoxStatusBuilder)? updates]) =>
      (new ChangeCheckBoxStatusBuilder()..update(updates))._build();

  _$ChangeCheckBoxStatus._() : super._();

  @override
  ChangeCheckBoxStatus rebuild(
          void Function(ChangeCheckBoxStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCheckBoxStatusBuilder toBuilder() =>
      new ChangeCheckBoxStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCheckBoxStatus;
  }

  @override
  int get hashCode {
    return 689027728;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ChangeCheckBoxStatus').toString();
  }
}

class ChangeCheckBoxStatusBuilder
    implements Builder<ChangeCheckBoxStatus, ChangeCheckBoxStatusBuilder> {
  _$ChangeCheckBoxStatus? _$v;

  ChangeCheckBoxStatusBuilder();

  @override
  void replace(ChangeCheckBoxStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCheckBoxStatus;
  }

  @override
  void update(void Function(ChangeCheckBoxStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCheckBoxStatus build() => _build();

  _$ChangeCheckBoxStatus _build() {
    final _$result = _$v ?? new _$ChangeCheckBoxStatus._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
