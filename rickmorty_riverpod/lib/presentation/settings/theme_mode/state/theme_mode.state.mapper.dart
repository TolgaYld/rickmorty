// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'theme_mode.state.dart';

class ThemeModeStateMapper extends ClassMapperBase<ThemeModeState> {
  ThemeModeStateMapper._();

  static ThemeModeStateMapper? _instance;
  static ThemeModeStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThemeModeStateMapper._());
      ThemeModeStateInitialMapper.ensureInitialized();
      ThemeModeStateLoadingMapper.ensureInitialized();
      ThemeModeStateLoadedMapper.ensureInitialized();
      ThemeModeStateErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ThemeModeState';

  @override
  final MappableFields<ThemeModeState> fields = const {};

  static ThemeModeState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ThemeModeState');
  }

  @override
  final Function instantiate = _instantiate;

  static ThemeModeState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThemeModeState>(map);
  }

  static ThemeModeState fromJson(String json) {
    return ensureInitialized().decodeJson<ThemeModeState>(json);
  }
}

mixin ThemeModeStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ThemeModeStateCopyWith<ThemeModeState, ThemeModeState, ThemeModeState>
  get copyWith;
}

abstract class ThemeModeStateCopyWith<$R, $In extends ThemeModeState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ThemeModeStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class ThemeModeStateInitialMapper
    extends ClassMapperBase<ThemeModeStateInitial> {
  ThemeModeStateInitialMapper._();

  static ThemeModeStateInitialMapper? _instance;
  static ThemeModeStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThemeModeStateInitialMapper._());
      ThemeModeStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ThemeModeStateInitial';

  @override
  final MappableFields<ThemeModeStateInitial> fields = const {};

  static ThemeModeStateInitial _instantiate(DecodingData data) {
    return ThemeModeStateInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static ThemeModeStateInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThemeModeStateInitial>(map);
  }

  static ThemeModeStateInitial fromJson(String json) {
    return ensureInitialized().decodeJson<ThemeModeStateInitial>(json);
  }
}

mixin ThemeModeStateInitialMappable {
  String toJson() {
    return ThemeModeStateInitialMapper.ensureInitialized()
        .encodeJson<ThemeModeStateInitial>(this as ThemeModeStateInitial);
  }

  Map<String, dynamic> toMap() {
    return ThemeModeStateInitialMapper.ensureInitialized()
        .encodeMap<ThemeModeStateInitial>(this as ThemeModeStateInitial);
  }

  ThemeModeStateInitialCopyWith<
    ThemeModeStateInitial,
    ThemeModeStateInitial,
    ThemeModeStateInitial
  >
  get copyWith =>
      _ThemeModeStateInitialCopyWithImpl<
        ThemeModeStateInitial,
        ThemeModeStateInitial
      >(this as ThemeModeStateInitial, $identity, $identity);
  @override
  String toString() {
    return ThemeModeStateInitialMapper.ensureInitialized().stringifyValue(
      this as ThemeModeStateInitial,
    );
  }

  @override
  bool operator ==(Object other) {
    return ThemeModeStateInitialMapper.ensureInitialized().equalsValue(
      this as ThemeModeStateInitial,
      other,
    );
  }

  @override
  int get hashCode {
    return ThemeModeStateInitialMapper.ensureInitialized().hashValue(
      this as ThemeModeStateInitial,
    );
  }
}

extension ThemeModeStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThemeModeStateInitial, $Out> {
  ThemeModeStateInitialCopyWith<$R, ThemeModeStateInitial, $Out>
  get $asThemeModeStateInitial => $base.as(
    (v, t, t2) => _ThemeModeStateInitialCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ThemeModeStateInitialCopyWith<
  $R,
  $In extends ThemeModeStateInitial,
  $Out
>
    implements ThemeModeStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ThemeModeStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ThemeModeStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThemeModeStateInitial, $Out>
    implements ThemeModeStateInitialCopyWith<$R, ThemeModeStateInitial, $Out> {
  _ThemeModeStateInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThemeModeStateInitial> $mapper =
      ThemeModeStateInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  ThemeModeStateInitial $make(CopyWithData data) => ThemeModeStateInitial();

  @override
  ThemeModeStateInitialCopyWith<$R2, ThemeModeStateInitial, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ThemeModeStateInitialCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ThemeModeStateLoadingMapper
    extends ClassMapperBase<ThemeModeStateLoading> {
  ThemeModeStateLoadingMapper._();

  static ThemeModeStateLoadingMapper? _instance;
  static ThemeModeStateLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThemeModeStateLoadingMapper._());
      ThemeModeStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ThemeModeStateLoading';

  @override
  final MappableFields<ThemeModeStateLoading> fields = const {};

  static ThemeModeStateLoading _instantiate(DecodingData data) {
    return ThemeModeStateLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static ThemeModeStateLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThemeModeStateLoading>(map);
  }

  static ThemeModeStateLoading fromJson(String json) {
    return ensureInitialized().decodeJson<ThemeModeStateLoading>(json);
  }
}

mixin ThemeModeStateLoadingMappable {
  String toJson() {
    return ThemeModeStateLoadingMapper.ensureInitialized()
        .encodeJson<ThemeModeStateLoading>(this as ThemeModeStateLoading);
  }

  Map<String, dynamic> toMap() {
    return ThemeModeStateLoadingMapper.ensureInitialized()
        .encodeMap<ThemeModeStateLoading>(this as ThemeModeStateLoading);
  }

  ThemeModeStateLoadingCopyWith<
    ThemeModeStateLoading,
    ThemeModeStateLoading,
    ThemeModeStateLoading
  >
  get copyWith =>
      _ThemeModeStateLoadingCopyWithImpl<
        ThemeModeStateLoading,
        ThemeModeStateLoading
      >(this as ThemeModeStateLoading, $identity, $identity);
  @override
  String toString() {
    return ThemeModeStateLoadingMapper.ensureInitialized().stringifyValue(
      this as ThemeModeStateLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return ThemeModeStateLoadingMapper.ensureInitialized().equalsValue(
      this as ThemeModeStateLoading,
      other,
    );
  }

  @override
  int get hashCode {
    return ThemeModeStateLoadingMapper.ensureInitialized().hashValue(
      this as ThemeModeStateLoading,
    );
  }
}

extension ThemeModeStateLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThemeModeStateLoading, $Out> {
  ThemeModeStateLoadingCopyWith<$R, ThemeModeStateLoading, $Out>
  get $asThemeModeStateLoading => $base.as(
    (v, t, t2) => _ThemeModeStateLoadingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ThemeModeStateLoadingCopyWith<
  $R,
  $In extends ThemeModeStateLoading,
  $Out
>
    implements ThemeModeStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  ThemeModeStateLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ThemeModeStateLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThemeModeStateLoading, $Out>
    implements ThemeModeStateLoadingCopyWith<$R, ThemeModeStateLoading, $Out> {
  _ThemeModeStateLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThemeModeStateLoading> $mapper =
      ThemeModeStateLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  ThemeModeStateLoading $make(CopyWithData data) => ThemeModeStateLoading();

  @override
  ThemeModeStateLoadingCopyWith<$R2, ThemeModeStateLoading, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ThemeModeStateLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ThemeModeStateLoadedMapper extends ClassMapperBase<ThemeModeStateLoaded> {
  ThemeModeStateLoadedMapper._();

  static ThemeModeStateLoadedMapper? _instance;
  static ThemeModeStateLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThemeModeStateLoadedMapper._());
      ThemeModeStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ThemeModeStateLoaded';

  static ThemeMode _$themeMode(ThemeModeStateLoaded v) => v.themeMode;
  static const Field<ThemeModeStateLoaded, ThemeMode> _f$themeMode = Field(
    'themeMode',
    _$themeMode,
  );

  @override
  final MappableFields<ThemeModeStateLoaded> fields = const {
    #themeMode: _f$themeMode,
  };

  static ThemeModeStateLoaded _instantiate(DecodingData data) {
    return ThemeModeStateLoaded(themeMode: data.dec(_f$themeMode));
  }

  @override
  final Function instantiate = _instantiate;

  static ThemeModeStateLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThemeModeStateLoaded>(map);
  }

  static ThemeModeStateLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<ThemeModeStateLoaded>(json);
  }
}

mixin ThemeModeStateLoadedMappable {
  String toJson() {
    return ThemeModeStateLoadedMapper.ensureInitialized()
        .encodeJson<ThemeModeStateLoaded>(this as ThemeModeStateLoaded);
  }

  Map<String, dynamic> toMap() {
    return ThemeModeStateLoadedMapper.ensureInitialized()
        .encodeMap<ThemeModeStateLoaded>(this as ThemeModeStateLoaded);
  }

  ThemeModeStateLoadedCopyWith<
    ThemeModeStateLoaded,
    ThemeModeStateLoaded,
    ThemeModeStateLoaded
  >
  get copyWith =>
      _ThemeModeStateLoadedCopyWithImpl<
        ThemeModeStateLoaded,
        ThemeModeStateLoaded
      >(this as ThemeModeStateLoaded, $identity, $identity);
  @override
  String toString() {
    return ThemeModeStateLoadedMapper.ensureInitialized().stringifyValue(
      this as ThemeModeStateLoaded,
    );
  }

  @override
  bool operator ==(Object other) {
    return ThemeModeStateLoadedMapper.ensureInitialized().equalsValue(
      this as ThemeModeStateLoaded,
      other,
    );
  }

  @override
  int get hashCode {
    return ThemeModeStateLoadedMapper.ensureInitialized().hashValue(
      this as ThemeModeStateLoaded,
    );
  }
}

extension ThemeModeStateLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThemeModeStateLoaded, $Out> {
  ThemeModeStateLoadedCopyWith<$R, ThemeModeStateLoaded, $Out>
  get $asThemeModeStateLoaded => $base.as(
    (v, t, t2) => _ThemeModeStateLoadedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ThemeModeStateLoadedCopyWith<
  $R,
  $In extends ThemeModeStateLoaded,
  $Out
>
    implements ThemeModeStateCopyWith<$R, $In, $Out> {
  @override
  $R call({ThemeMode? themeMode});
  ThemeModeStateLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ThemeModeStateLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThemeModeStateLoaded, $Out>
    implements ThemeModeStateLoadedCopyWith<$R, ThemeModeStateLoaded, $Out> {
  _ThemeModeStateLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThemeModeStateLoaded> $mapper =
      ThemeModeStateLoadedMapper.ensureInitialized();
  @override
  $R call({ThemeMode? themeMode}) =>
      $apply(FieldCopyWithData({if (themeMode != null) #themeMode: themeMode}));
  @override
  ThemeModeStateLoaded $make(CopyWithData data) => ThemeModeStateLoaded(
    themeMode: data.get(#themeMode, or: $value.themeMode),
  );

  @override
  ThemeModeStateLoadedCopyWith<$R2, ThemeModeStateLoaded, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ThemeModeStateLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ThemeModeStateErrorMapper extends ClassMapperBase<ThemeModeStateError> {
  ThemeModeStateErrorMapper._();

  static ThemeModeStateErrorMapper? _instance;
  static ThemeModeStateErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThemeModeStateErrorMapper._());
      ThemeModeStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ThemeModeStateError';

  static String _$message(ThemeModeStateError v) => v.message;
  static const Field<ThemeModeStateError, String> _f$message = Field(
    'message',
    _$message,
  );

  @override
  final MappableFields<ThemeModeStateError> fields = const {
    #message: _f$message,
  };

  static ThemeModeStateError _instantiate(DecodingData data) {
    return ThemeModeStateError(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static ThemeModeStateError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThemeModeStateError>(map);
  }

  static ThemeModeStateError fromJson(String json) {
    return ensureInitialized().decodeJson<ThemeModeStateError>(json);
  }
}

mixin ThemeModeStateErrorMappable {
  String toJson() {
    return ThemeModeStateErrorMapper.ensureInitialized()
        .encodeJson<ThemeModeStateError>(this as ThemeModeStateError);
  }

  Map<String, dynamic> toMap() {
    return ThemeModeStateErrorMapper.ensureInitialized()
        .encodeMap<ThemeModeStateError>(this as ThemeModeStateError);
  }

  ThemeModeStateErrorCopyWith<
    ThemeModeStateError,
    ThemeModeStateError,
    ThemeModeStateError
  >
  get copyWith =>
      _ThemeModeStateErrorCopyWithImpl<
        ThemeModeStateError,
        ThemeModeStateError
      >(this as ThemeModeStateError, $identity, $identity);
  @override
  String toString() {
    return ThemeModeStateErrorMapper.ensureInitialized().stringifyValue(
      this as ThemeModeStateError,
    );
  }

  @override
  bool operator ==(Object other) {
    return ThemeModeStateErrorMapper.ensureInitialized().equalsValue(
      this as ThemeModeStateError,
      other,
    );
  }

  @override
  int get hashCode {
    return ThemeModeStateErrorMapper.ensureInitialized().hashValue(
      this as ThemeModeStateError,
    );
  }
}

extension ThemeModeStateErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThemeModeStateError, $Out> {
  ThemeModeStateErrorCopyWith<$R, ThemeModeStateError, $Out>
  get $asThemeModeStateError => $base.as(
    (v, t, t2) => _ThemeModeStateErrorCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ThemeModeStateErrorCopyWith<
  $R,
  $In extends ThemeModeStateError,
  $Out
>
    implements ThemeModeStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  ThemeModeStateErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ThemeModeStateErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThemeModeStateError, $Out>
    implements ThemeModeStateErrorCopyWith<$R, ThemeModeStateError, $Out> {
  _ThemeModeStateErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThemeModeStateError> $mapper =
      ThemeModeStateErrorMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  ThemeModeStateError $make(CopyWithData data) =>
      ThemeModeStateError(message: data.get(#message, or: $value.message));

  @override
  ThemeModeStateErrorCopyWith<$R2, ThemeModeStateError, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ThemeModeStateErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

