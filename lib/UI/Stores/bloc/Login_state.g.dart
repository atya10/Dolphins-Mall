// GENERATED CODE - DO NOT MODIFY BY HAND

part of Login_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginState extends LoginState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? iS_Tab1;
  @override
  final bool? ShowPass_IconStatus;
  @override
  final bool? CheckboxStatus;
  @override
  final List<String>? countries;

  factory _$LoginState([void Function(LoginStateBuilder)? updates]) =>
      (new LoginStateBuilder()..update(updates))._build();

  _$LoginState._(
      {this.error,
      this.isLoading,
      this.success,
      this.iS_Tab1,
      this.ShowPass_IconStatus,
      this.CheckboxStatus,
      this.countries})
      : super._();

  @override
  LoginState rebuild(void Function(LoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        iS_Tab1 == other.iS_Tab1 &&
        ShowPass_IconStatus == other.ShowPass_IconStatus &&
        CheckboxStatus == other.CheckboxStatus &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, iS_Tab1.hashCode);
    _$hash = $jc(_$hash, ShowPass_IconStatus.hashCode);
    _$hash = $jc(_$hash, CheckboxStatus.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('iS_Tab1', iS_Tab1)
          ..add('ShowPass_IconStatus', ShowPass_IconStatus)
          ..add('CheckboxStatus', CheckboxStatus)
          ..add('countries', countries))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _iS_Tab1;
  bool? get iS_Tab1 => _$this._iS_Tab1;
  set iS_Tab1(bool? iS_Tab1) => _$this._iS_Tab1 = iS_Tab1;

  bool? _ShowPass_IconStatus;
  bool? get ShowPass_IconStatus => _$this._ShowPass_IconStatus;
  set ShowPass_IconStatus(bool? ShowPass_IconStatus) =>
      _$this._ShowPass_IconStatus = ShowPass_IconStatus;

  bool? _CheckboxStatus;
  bool? get CheckboxStatus => _$this._CheckboxStatus;
  set CheckboxStatus(bool? CheckboxStatus) =>
      _$this._CheckboxStatus = CheckboxStatus;

  List<String>? _countries;
  List<String>? get countries => _$this._countries;
  set countries(List<String>? countries) => _$this._countries = countries;

  LoginStateBuilder();

  LoginStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _iS_Tab1 = $v.iS_Tab1;
      _ShowPass_IconStatus = $v.ShowPass_IconStatus;
      _CheckboxStatus = $v.CheckboxStatus;
      _countries = $v.countries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginState;
  }

  @override
  void update(void Function(LoginStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginState build() => _build();

  _$LoginState _build() {
    final _$result = _$v ??
        new _$LoginState._(
            error: error,
            isLoading: isLoading,
            success: success,
            iS_Tab1: iS_Tab1,
            ShowPass_IconStatus: ShowPass_IconStatus,
            CheckboxStatus: CheckboxStatus,
            countries: countries);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
