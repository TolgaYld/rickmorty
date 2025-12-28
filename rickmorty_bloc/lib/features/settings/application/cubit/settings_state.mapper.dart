// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'settings_state.dart';

class SettingsStateMapper extends ClassMapperBase<SettingsState> {
  SettingsStateMapper._();

  static SettingsStateMapper? _instance;
  static SettingsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateMapper._());
      SettingsStateInitialMapper.ensureInitialized();
      SettingsStateLoadingMapper.ensureInitialized();
      SettingsStateLoadedMapper.ensureInitialized();
      SettingsStateErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsState';

  @override
  final MappableFields<SettingsState> fields = const {};

  static SettingsState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('SettingsState');
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsState>(map);
  }

  static SettingsState fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsState>(json);
  }
}

mixin SettingsStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  SettingsStateCopyWith<SettingsState, SettingsState, SettingsState>
  get copyWith;
}

abstract class SettingsStateCopyWith<$R, $In extends SettingsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  SettingsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class SettingsStateInitialMapper extends ClassMapperBase<SettingsStateInitial> {
  SettingsStateInitialMapper._();

  static SettingsStateInitialMapper? _instance;
  static SettingsStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateInitialMapper._());
      SettingsStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsStateInitial';

  @override
  final MappableFields<SettingsStateInitial> fields = const {};

  static SettingsStateInitial _instantiate(DecodingData data) {
    return SettingsStateInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsStateInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsStateInitial>(map);
  }

  static SettingsStateInitial fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsStateInitial>(json);
  }
}

mixin SettingsStateInitialMappable {
  String toJson() {
    return SettingsStateInitialMapper.ensureInitialized()
        .encodeJson<SettingsStateInitial>(this as SettingsStateInitial);
  }

  Map<String, dynamic> toMap() {
    return SettingsStateInitialMapper.ensureInitialized()
        .encodeMap<SettingsStateInitial>(this as SettingsStateInitial);
  }

  SettingsStateInitialCopyWith<
    SettingsStateInitial,
    SettingsStateInitial,
    SettingsStateInitial
  >
  get copyWith =>
      _SettingsStateInitialCopyWithImpl<
        SettingsStateInitial,
        SettingsStateInitial
      >(this as SettingsStateInitial, $identity, $identity);
  @override
  String toString() {
    return SettingsStateInitialMapper.ensureInitialized().stringifyValue(
      this as SettingsStateInitial,
    );
  }

  @override
  bool operator ==(Object other) {
    return SettingsStateInitialMapper.ensureInitialized().equalsValue(
      this as SettingsStateInitial,
      other,
    );
  }

  @override
  int get hashCode {
    return SettingsStateInitialMapper.ensureInitialized().hashValue(
      this as SettingsStateInitial,
    );
  }
}

extension SettingsStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsStateInitial, $Out> {
  SettingsStateInitialCopyWith<$R, SettingsStateInitial, $Out>
  get $asSettingsStateInitial => $base.as(
    (v, t, t2) => _SettingsStateInitialCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SettingsStateInitialCopyWith<
  $R,
  $In extends SettingsStateInitial,
  $Out
>
    implements SettingsStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SettingsStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SettingsStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsStateInitial, $Out>
    implements SettingsStateInitialCopyWith<$R, SettingsStateInitial, $Out> {
  _SettingsStateInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsStateInitial> $mapper =
      SettingsStateInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SettingsStateInitial $make(CopyWithData data) => SettingsStateInitial();

  @override
  SettingsStateInitialCopyWith<$R2, SettingsStateInitial, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SettingsStateInitialCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SettingsStateLoadingMapper extends ClassMapperBase<SettingsStateLoading> {
  SettingsStateLoadingMapper._();

  static SettingsStateLoadingMapper? _instance;
  static SettingsStateLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateLoadingMapper._());
      SettingsStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsStateLoading';

  @override
  final MappableFields<SettingsStateLoading> fields = const {};

  static SettingsStateLoading _instantiate(DecodingData data) {
    return SettingsStateLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsStateLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsStateLoading>(map);
  }

  static SettingsStateLoading fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsStateLoading>(json);
  }
}

mixin SettingsStateLoadingMappable {
  String toJson() {
    return SettingsStateLoadingMapper.ensureInitialized()
        .encodeJson<SettingsStateLoading>(this as SettingsStateLoading);
  }

  Map<String, dynamic> toMap() {
    return SettingsStateLoadingMapper.ensureInitialized()
        .encodeMap<SettingsStateLoading>(this as SettingsStateLoading);
  }

  SettingsStateLoadingCopyWith<
    SettingsStateLoading,
    SettingsStateLoading,
    SettingsStateLoading
  >
  get copyWith =>
      _SettingsStateLoadingCopyWithImpl<
        SettingsStateLoading,
        SettingsStateLoading
      >(this as SettingsStateLoading, $identity, $identity);
  @override
  String toString() {
    return SettingsStateLoadingMapper.ensureInitialized().stringifyValue(
      this as SettingsStateLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return SettingsStateLoadingMapper.ensureInitialized().equalsValue(
      this as SettingsStateLoading,
      other,
    );
  }

  @override
  int get hashCode {
    return SettingsStateLoadingMapper.ensureInitialized().hashValue(
      this as SettingsStateLoading,
    );
  }
}

extension SettingsStateLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsStateLoading, $Out> {
  SettingsStateLoadingCopyWith<$R, SettingsStateLoading, $Out>
  get $asSettingsStateLoading => $base.as(
    (v, t, t2) => _SettingsStateLoadingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SettingsStateLoadingCopyWith<
  $R,
  $In extends SettingsStateLoading,
  $Out
>
    implements SettingsStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SettingsStateLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SettingsStateLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsStateLoading, $Out>
    implements SettingsStateLoadingCopyWith<$R, SettingsStateLoading, $Out> {
  _SettingsStateLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsStateLoading> $mapper =
      SettingsStateLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SettingsStateLoading $make(CopyWithData data) => SettingsStateLoading();

  @override
  SettingsStateLoadingCopyWith<$R2, SettingsStateLoading, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SettingsStateLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SettingsStateLoadedMapper extends ClassMapperBase<SettingsStateLoaded> {
  SettingsStateLoadedMapper._();

  static SettingsStateLoadedMapper? _instance;
  static SettingsStateLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateLoadedMapper._());
      SettingsStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsStateLoaded';

  static ThemeMode _$themeMode(SettingsStateLoaded v) => v.themeMode;
  static const Field<SettingsStateLoaded, ThemeMode> _f$themeMode = Field(
    'themeMode',
    _$themeMode,
  );

  @override
  final MappableFields<SettingsStateLoaded> fields = const {
    #themeMode: _f$themeMode,
  };

  static SettingsStateLoaded _instantiate(DecodingData data) {
    return SettingsStateLoaded(themeMode: data.dec(_f$themeMode));
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsStateLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsStateLoaded>(map);
  }

  static SettingsStateLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsStateLoaded>(json);
  }
}

mixin SettingsStateLoadedMappable {
  String toJson() {
    return SettingsStateLoadedMapper.ensureInitialized()
        .encodeJson<SettingsStateLoaded>(this as SettingsStateLoaded);
  }

  Map<String, dynamic> toMap() {
    return SettingsStateLoadedMapper.ensureInitialized()
        .encodeMap<SettingsStateLoaded>(this as SettingsStateLoaded);
  }

  SettingsStateLoadedCopyWith<
    SettingsStateLoaded,
    SettingsStateLoaded,
    SettingsStateLoaded
  >
  get copyWith =>
      _SettingsStateLoadedCopyWithImpl<
        SettingsStateLoaded,
        SettingsStateLoaded
      >(this as SettingsStateLoaded, $identity, $identity);
  @override
  String toString() {
    return SettingsStateLoadedMapper.ensureInitialized().stringifyValue(
      this as SettingsStateLoaded,
    );
  }

  @override
  bool operator ==(Object other) {
    return SettingsStateLoadedMapper.ensureInitialized().equalsValue(
      this as SettingsStateLoaded,
      other,
    );
  }

  @override
  int get hashCode {
    return SettingsStateLoadedMapper.ensureInitialized().hashValue(
      this as SettingsStateLoaded,
    );
  }
}

extension SettingsStateLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsStateLoaded, $Out> {
  SettingsStateLoadedCopyWith<$R, SettingsStateLoaded, $Out>
  get $asSettingsStateLoaded => $base.as(
    (v, t, t2) => _SettingsStateLoadedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SettingsStateLoadedCopyWith<
  $R,
  $In extends SettingsStateLoaded,
  $Out
>
    implements SettingsStateCopyWith<$R, $In, $Out> {
  @override
  $R call({ThemeMode? themeMode});
  SettingsStateLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SettingsStateLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsStateLoaded, $Out>
    implements SettingsStateLoadedCopyWith<$R, SettingsStateLoaded, $Out> {
  _SettingsStateLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsStateLoaded> $mapper =
      SettingsStateLoadedMapper.ensureInitialized();
  @override
  $R call({ThemeMode? themeMode}) =>
      $apply(FieldCopyWithData({if (themeMode != null) #themeMode: themeMode}));
  @override
  SettingsStateLoaded $make(CopyWithData data) => SettingsStateLoaded(
    themeMode: data.get(#themeMode, or: $value.themeMode),
  );

  @override
  SettingsStateLoadedCopyWith<$R2, SettingsStateLoaded, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SettingsStateLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SettingsStateErrorMapper extends ClassMapperBase<SettingsStateError> {
  SettingsStateErrorMapper._();

  static SettingsStateErrorMapper? _instance;
  static SettingsStateErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateErrorMapper._());
      SettingsStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsStateError';

  static String _$message(SettingsStateError v) => v.message;
  static const Field<SettingsStateError, String> _f$message = Field(
    'message',
    _$message,
  );

  @override
  final MappableFields<SettingsStateError> fields = const {
    #message: _f$message,
  };

  static SettingsStateError _instantiate(DecodingData data) {
    return SettingsStateError(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsStateError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsStateError>(map);
  }

  static SettingsStateError fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsStateError>(json);
  }
}

mixin SettingsStateErrorMappable {
  String toJson() {
    return SettingsStateErrorMapper.ensureInitialized()
        .encodeJson<SettingsStateError>(this as SettingsStateError);
  }

  Map<String, dynamic> toMap() {
    return SettingsStateErrorMapper.ensureInitialized()
        .encodeMap<SettingsStateError>(this as SettingsStateError);
  }

  SettingsStateErrorCopyWith<
    SettingsStateError,
    SettingsStateError,
    SettingsStateError
  >
  get copyWith =>
      _SettingsStateErrorCopyWithImpl<SettingsStateError, SettingsStateError>(
        this as SettingsStateError,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SettingsStateErrorMapper.ensureInitialized().stringifyValue(
      this as SettingsStateError,
    );
  }

  @override
  bool operator ==(Object other) {
    return SettingsStateErrorMapper.ensureInitialized().equalsValue(
      this as SettingsStateError,
      other,
    );
  }

  @override
  int get hashCode {
    return SettingsStateErrorMapper.ensureInitialized().hashValue(
      this as SettingsStateError,
    );
  }
}

extension SettingsStateErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsStateError, $Out> {
  SettingsStateErrorCopyWith<$R, SettingsStateError, $Out>
  get $asSettingsStateError => $base.as(
    (v, t, t2) => _SettingsStateErrorCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SettingsStateErrorCopyWith<
  $R,
  $In extends SettingsStateError,
  $Out
>
    implements SettingsStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  SettingsStateErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SettingsStateErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsStateError, $Out>
    implements SettingsStateErrorCopyWith<$R, SettingsStateError, $Out> {
  _SettingsStateErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsStateError> $mapper =
      SettingsStateErrorMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  SettingsStateError $make(CopyWithData data) =>
      SettingsStateError(message: data.get(#message, or: $value.message));

  @override
  SettingsStateErrorCopyWith<$R2, SettingsStateError, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SettingsStateErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

