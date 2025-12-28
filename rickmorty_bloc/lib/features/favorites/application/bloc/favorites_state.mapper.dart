// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'favorites_state.dart';

class FavoritesStateMapper extends ClassMapperBase<FavoritesState> {
  FavoritesStateMapper._();

  static FavoritesStateMapper? _instance;
  static FavoritesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoritesStateMapper._());
      FavoritesStateInitialMapper.ensureInitialized();
      FavoritesStateLoadingMapper.ensureInitialized();
      FavoritesStateLoadedMapper.ensureInitialized();
      FavoritesStateErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FavoritesState';

  @override
  final MappableFields<FavoritesState> fields = const {};

  static FavoritesState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('FavoritesState');
  }

  @override
  final Function instantiate = _instantiate;

  static FavoritesState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FavoritesState>(map);
  }

  static FavoritesState fromJson(String json) {
    return ensureInitialized().decodeJson<FavoritesState>(json);
  }
}

mixin FavoritesStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  FavoritesStateCopyWith<FavoritesState, FavoritesState, FavoritesState>
  get copyWith;
}

abstract class FavoritesStateCopyWith<$R, $In extends FavoritesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  FavoritesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class FavoritesStateInitialMapper
    extends ClassMapperBase<FavoritesStateInitial> {
  FavoritesStateInitialMapper._();

  static FavoritesStateInitialMapper? _instance;
  static FavoritesStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoritesStateInitialMapper._());
      FavoritesStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FavoritesStateInitial';

  @override
  final MappableFields<FavoritesStateInitial> fields = const {};

  static FavoritesStateInitial _instantiate(DecodingData data) {
    return FavoritesStateInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static FavoritesStateInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FavoritesStateInitial>(map);
  }

  static FavoritesStateInitial fromJson(String json) {
    return ensureInitialized().decodeJson<FavoritesStateInitial>(json);
  }
}

mixin FavoritesStateInitialMappable {
  String toJson() {
    return FavoritesStateInitialMapper.ensureInitialized()
        .encodeJson<FavoritesStateInitial>(this as FavoritesStateInitial);
  }

  Map<String, dynamic> toMap() {
    return FavoritesStateInitialMapper.ensureInitialized()
        .encodeMap<FavoritesStateInitial>(this as FavoritesStateInitial);
  }

  FavoritesStateInitialCopyWith<
    FavoritesStateInitial,
    FavoritesStateInitial,
    FavoritesStateInitial
  >
  get copyWith =>
      _FavoritesStateInitialCopyWithImpl<
        FavoritesStateInitial,
        FavoritesStateInitial
      >(this as FavoritesStateInitial, $identity, $identity);
  @override
  String toString() {
    return FavoritesStateInitialMapper.ensureInitialized().stringifyValue(
      this as FavoritesStateInitial,
    );
  }

  @override
  bool operator ==(Object other) {
    return FavoritesStateInitialMapper.ensureInitialized().equalsValue(
      this as FavoritesStateInitial,
      other,
    );
  }

  @override
  int get hashCode {
    return FavoritesStateInitialMapper.ensureInitialized().hashValue(
      this as FavoritesStateInitial,
    );
  }
}

extension FavoritesStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FavoritesStateInitial, $Out> {
  FavoritesStateInitialCopyWith<$R, FavoritesStateInitial, $Out>
  get $asFavoritesStateInitial => $base.as(
    (v, t, t2) => _FavoritesStateInitialCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FavoritesStateInitialCopyWith<
  $R,
  $In extends FavoritesStateInitial,
  $Out
>
    implements FavoritesStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  FavoritesStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FavoritesStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FavoritesStateInitial, $Out>
    implements FavoritesStateInitialCopyWith<$R, FavoritesStateInitial, $Out> {
  _FavoritesStateInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FavoritesStateInitial> $mapper =
      FavoritesStateInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  FavoritesStateInitial $make(CopyWithData data) => FavoritesStateInitial();

  @override
  FavoritesStateInitialCopyWith<$R2, FavoritesStateInitial, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FavoritesStateInitialCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FavoritesStateLoadingMapper
    extends ClassMapperBase<FavoritesStateLoading> {
  FavoritesStateLoadingMapper._();

  static FavoritesStateLoadingMapper? _instance;
  static FavoritesStateLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoritesStateLoadingMapper._());
      FavoritesStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FavoritesStateLoading';

  @override
  final MappableFields<FavoritesStateLoading> fields = const {};

  static FavoritesStateLoading _instantiate(DecodingData data) {
    return FavoritesStateLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static FavoritesStateLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FavoritesStateLoading>(map);
  }

  static FavoritesStateLoading fromJson(String json) {
    return ensureInitialized().decodeJson<FavoritesStateLoading>(json);
  }
}

mixin FavoritesStateLoadingMappable {
  String toJson() {
    return FavoritesStateLoadingMapper.ensureInitialized()
        .encodeJson<FavoritesStateLoading>(this as FavoritesStateLoading);
  }

  Map<String, dynamic> toMap() {
    return FavoritesStateLoadingMapper.ensureInitialized()
        .encodeMap<FavoritesStateLoading>(this as FavoritesStateLoading);
  }

  FavoritesStateLoadingCopyWith<
    FavoritesStateLoading,
    FavoritesStateLoading,
    FavoritesStateLoading
  >
  get copyWith =>
      _FavoritesStateLoadingCopyWithImpl<
        FavoritesStateLoading,
        FavoritesStateLoading
      >(this as FavoritesStateLoading, $identity, $identity);
  @override
  String toString() {
    return FavoritesStateLoadingMapper.ensureInitialized().stringifyValue(
      this as FavoritesStateLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return FavoritesStateLoadingMapper.ensureInitialized().equalsValue(
      this as FavoritesStateLoading,
      other,
    );
  }

  @override
  int get hashCode {
    return FavoritesStateLoadingMapper.ensureInitialized().hashValue(
      this as FavoritesStateLoading,
    );
  }
}

extension FavoritesStateLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FavoritesStateLoading, $Out> {
  FavoritesStateLoadingCopyWith<$R, FavoritesStateLoading, $Out>
  get $asFavoritesStateLoading => $base.as(
    (v, t, t2) => _FavoritesStateLoadingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FavoritesStateLoadingCopyWith<
  $R,
  $In extends FavoritesStateLoading,
  $Out
>
    implements FavoritesStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  FavoritesStateLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FavoritesStateLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FavoritesStateLoading, $Out>
    implements FavoritesStateLoadingCopyWith<$R, FavoritesStateLoading, $Out> {
  _FavoritesStateLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FavoritesStateLoading> $mapper =
      FavoritesStateLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  FavoritesStateLoading $make(CopyWithData data) => FavoritesStateLoading();

  @override
  FavoritesStateLoadingCopyWith<$R2, FavoritesStateLoading, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FavoritesStateLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FavoritesStateLoadedMapper extends ClassMapperBase<FavoritesStateLoaded> {
  FavoritesStateLoadedMapper._();

  static FavoritesStateLoadedMapper? _instance;
  static FavoritesStateLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoritesStateLoadedMapper._());
      FavoritesStateMapper.ensureInitialized();
      CharacterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FavoritesStateLoaded';

  static List<Character> _$favorites(FavoritesStateLoaded v) => v.favorites;
  static const Field<FavoritesStateLoaded, List<Character>> _f$favorites =
      Field('favorites', _$favorites);

  @override
  final MappableFields<FavoritesStateLoaded> fields = const {
    #favorites: _f$favorites,
  };

  static FavoritesStateLoaded _instantiate(DecodingData data) {
    return FavoritesStateLoaded(favorites: data.dec(_f$favorites));
  }

  @override
  final Function instantiate = _instantiate;

  static FavoritesStateLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FavoritesStateLoaded>(map);
  }

  static FavoritesStateLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<FavoritesStateLoaded>(json);
  }
}

mixin FavoritesStateLoadedMappable {
  String toJson() {
    return FavoritesStateLoadedMapper.ensureInitialized()
        .encodeJson<FavoritesStateLoaded>(this as FavoritesStateLoaded);
  }

  Map<String, dynamic> toMap() {
    return FavoritesStateLoadedMapper.ensureInitialized()
        .encodeMap<FavoritesStateLoaded>(this as FavoritesStateLoaded);
  }

  FavoritesStateLoadedCopyWith<
    FavoritesStateLoaded,
    FavoritesStateLoaded,
    FavoritesStateLoaded
  >
  get copyWith =>
      _FavoritesStateLoadedCopyWithImpl<
        FavoritesStateLoaded,
        FavoritesStateLoaded
      >(this as FavoritesStateLoaded, $identity, $identity);
  @override
  String toString() {
    return FavoritesStateLoadedMapper.ensureInitialized().stringifyValue(
      this as FavoritesStateLoaded,
    );
  }

  @override
  bool operator ==(Object other) {
    return FavoritesStateLoadedMapper.ensureInitialized().equalsValue(
      this as FavoritesStateLoaded,
      other,
    );
  }

  @override
  int get hashCode {
    return FavoritesStateLoadedMapper.ensureInitialized().hashValue(
      this as FavoritesStateLoaded,
    );
  }
}

extension FavoritesStateLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FavoritesStateLoaded, $Out> {
  FavoritesStateLoadedCopyWith<$R, FavoritesStateLoaded, $Out>
  get $asFavoritesStateLoaded => $base.as(
    (v, t, t2) => _FavoritesStateLoadedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FavoritesStateLoadedCopyWith<
  $R,
  $In extends FavoritesStateLoaded,
  $Out
>
    implements FavoritesStateCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Character, CharacterCopyWith<$R, Character, Character>>
  get favorites;
  @override
  $R call({List<Character>? favorites});
  FavoritesStateLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FavoritesStateLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FavoritesStateLoaded, $Out>
    implements FavoritesStateLoadedCopyWith<$R, FavoritesStateLoaded, $Out> {
  _FavoritesStateLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FavoritesStateLoaded> $mapper =
      FavoritesStateLoadedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Character, CharacterCopyWith<$R, Character, Character>>
  get favorites => ListCopyWith(
    $value.favorites,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(favorites: v),
  );
  @override
  $R call({List<Character>? favorites}) =>
      $apply(FieldCopyWithData({if (favorites != null) #favorites: favorites}));
  @override
  FavoritesStateLoaded $make(CopyWithData data) => FavoritesStateLoaded(
    favorites: data.get(#favorites, or: $value.favorites),
  );

  @override
  FavoritesStateLoadedCopyWith<$R2, FavoritesStateLoaded, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FavoritesStateLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FavoritesStateErrorMapper extends ClassMapperBase<FavoritesStateError> {
  FavoritesStateErrorMapper._();

  static FavoritesStateErrorMapper? _instance;
  static FavoritesStateErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoritesStateErrorMapper._());
      FavoritesStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FavoritesStateError';

  static String _$message(FavoritesStateError v) => v.message;
  static const Field<FavoritesStateError, String> _f$message = Field(
    'message',
    _$message,
  );

  @override
  final MappableFields<FavoritesStateError> fields = const {
    #message: _f$message,
  };

  static FavoritesStateError _instantiate(DecodingData data) {
    return FavoritesStateError(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static FavoritesStateError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FavoritesStateError>(map);
  }

  static FavoritesStateError fromJson(String json) {
    return ensureInitialized().decodeJson<FavoritesStateError>(json);
  }
}

mixin FavoritesStateErrorMappable {
  String toJson() {
    return FavoritesStateErrorMapper.ensureInitialized()
        .encodeJson<FavoritesStateError>(this as FavoritesStateError);
  }

  Map<String, dynamic> toMap() {
    return FavoritesStateErrorMapper.ensureInitialized()
        .encodeMap<FavoritesStateError>(this as FavoritesStateError);
  }

  FavoritesStateErrorCopyWith<
    FavoritesStateError,
    FavoritesStateError,
    FavoritesStateError
  >
  get copyWith =>
      _FavoritesStateErrorCopyWithImpl<
        FavoritesStateError,
        FavoritesStateError
      >(this as FavoritesStateError, $identity, $identity);
  @override
  String toString() {
    return FavoritesStateErrorMapper.ensureInitialized().stringifyValue(
      this as FavoritesStateError,
    );
  }

  @override
  bool operator ==(Object other) {
    return FavoritesStateErrorMapper.ensureInitialized().equalsValue(
      this as FavoritesStateError,
      other,
    );
  }

  @override
  int get hashCode {
    return FavoritesStateErrorMapper.ensureInitialized().hashValue(
      this as FavoritesStateError,
    );
  }
}

extension FavoritesStateErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FavoritesStateError, $Out> {
  FavoritesStateErrorCopyWith<$R, FavoritesStateError, $Out>
  get $asFavoritesStateError => $base.as(
    (v, t, t2) => _FavoritesStateErrorCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class FavoritesStateErrorCopyWith<
  $R,
  $In extends FavoritesStateError,
  $Out
>
    implements FavoritesStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  FavoritesStateErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FavoritesStateErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FavoritesStateError, $Out>
    implements FavoritesStateErrorCopyWith<$R, FavoritesStateError, $Out> {
  _FavoritesStateErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FavoritesStateError> $mapper =
      FavoritesStateErrorMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  FavoritesStateError $make(CopyWithData data) =>
      FavoritesStateError(message: data.get(#message, or: $value.message));

  @override
  FavoritesStateErrorCopyWith<$R2, FavoritesStateError, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FavoritesStateErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

