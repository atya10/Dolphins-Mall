// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$loginState extends loginState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? ShowPass_IconStatus;
  @override
  final bool? CheckboxStatus;
  @override
  final List<String>? countries;

  factory _$loginState([void Function(loginStateBuilder)? updates]) =>
      (new loginStateBuilder()..update(updates))._build();

  _$loginState._(
      {this.error,
      this.isLoading,
      this.success,
      this.ShowPass_IconStatus,
      this.CheckboxStatus,
      this.countries})
      : super._();

  @override
  loginState rebuild(void Function(loginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  loginStateBuilder toBuilder() => new loginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is loginState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
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
    _$hash = $jc(_$hash, ShowPass_IconStatus.hashCode);
    _$hash = $jc(_$hash, CheckboxStatus.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'loginState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('ShowPass_IconStatus', ShowPass_IconStatus)
          ..add('CheckboxStatus', CheckboxStatus)
          ..add('countries', countries))
        .toString();
  }
}

class loginStateBuilder implements Builder<loginState, loginStateBuilder> {
  _$loginState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

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

  loginStateBuilder();

  loginStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _ShowPass_IconStatus = $v.ShowPass_IconStatus;
      _CheckboxStatus = $v.CheckboxStatus;
      _countries = $v.countries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(loginState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$loginState;
  }

  @override
  void update(void Function(loginStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  loginState build() => _build();

  _$loginState _build() {
    final _$result = _$v ??
        new _$loginState._(
            error: error,
            isLoading: isLoading,
            success: success,
            ShowPass_IconStatus: ShowPass_IconStatus,
            CheckboxStatus: CheckboxStatus,
            countries: countries);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
