// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character_state.dart';

class CharacterStateMapper extends ClassMapperBase<CharacterState> {
  CharacterStateMapper._();

  static CharacterStateMapper? _instance;
  static CharacterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterStateMapper._());
      CharacterStateInitialMapper.ensureInitialized();
      CharacterStateLoadingMapper.ensureInitialized();
      CharacterStateLoadedMapper.ensureInitialized();
      CharacterStateErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterState';

  @override
  final MappableFields<CharacterState> fields = const {};

  static CharacterState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('CharacterState');
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterState>(map);
  }

  static CharacterState fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterState>(json);
  }
}

mixin CharacterStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  CharacterStateCopyWith<CharacterState, CharacterState, CharacterState>
  get copyWith;
}

abstract class CharacterStateCopyWith<$R, $In extends CharacterState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  CharacterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class CharacterStateInitialMapper
    extends ClassMapperBase<CharacterStateInitial> {
  CharacterStateInitialMapper._();

  static CharacterStateInitialMapper? _instance;
  static CharacterStateInitialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterStateInitialMapper._());
      CharacterStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterStateInitial';

  @override
  final MappableFields<CharacterStateInitial> fields = const {};

  static CharacterStateInitial _instantiate(DecodingData data) {
    return CharacterStateInitial();
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterStateInitial fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterStateInitial>(map);
  }

  static CharacterStateInitial fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterStateInitial>(json);
  }
}

mixin CharacterStateInitialMappable {
  String toJson() {
    return CharacterStateInitialMapper.ensureInitialized()
        .encodeJson<CharacterStateInitial>(this as CharacterStateInitial);
  }

  Map<String, dynamic> toMap() {
    return CharacterStateInitialMapper.ensureInitialized()
        .encodeMap<CharacterStateInitial>(this as CharacterStateInitial);
  }

  CharacterStateInitialCopyWith<
    CharacterStateInitial,
    CharacterStateInitial,
    CharacterStateInitial
  >
  get copyWith =>
      _CharacterStateInitialCopyWithImpl<
        CharacterStateInitial,
        CharacterStateInitial
      >(this as CharacterStateInitial, $identity, $identity);
  @override
  String toString() {
    return CharacterStateInitialMapper.ensureInitialized().stringifyValue(
      this as CharacterStateInitial,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterStateInitialMapper.ensureInitialized().equalsValue(
      this as CharacterStateInitial,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterStateInitialMapper.ensureInitialized().hashValue(
      this as CharacterStateInitial,
    );
  }
}

extension CharacterStateInitialValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterStateInitial, $Out> {
  CharacterStateInitialCopyWith<$R, CharacterStateInitial, $Out>
  get $asCharacterStateInitial => $base.as(
    (v, t, t2) => _CharacterStateInitialCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterStateInitialCopyWith<
  $R,
  $In extends CharacterStateInitial,
  $Out
>
    implements CharacterStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CharacterStateInitialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterStateInitialCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterStateInitial, $Out>
    implements CharacterStateInitialCopyWith<$R, CharacterStateInitial, $Out> {
  _CharacterStateInitialCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterStateInitial> $mapper =
      CharacterStateInitialMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  CharacterStateInitial $make(CopyWithData data) => CharacterStateInitial();

  @override
  CharacterStateInitialCopyWith<$R2, CharacterStateInitial, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CharacterStateInitialCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CharacterStateLoadingMapper
    extends ClassMapperBase<CharacterStateLoading> {
  CharacterStateLoadingMapper._();

  static CharacterStateLoadingMapper? _instance;
  static CharacterStateLoadingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterStateLoadingMapper._());
      CharacterStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterStateLoading';

  @override
  final MappableFields<CharacterStateLoading> fields = const {};

  static CharacterStateLoading _instantiate(DecodingData data) {
    return CharacterStateLoading();
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterStateLoading fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterStateLoading>(map);
  }

  static CharacterStateLoading fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterStateLoading>(json);
  }
}

mixin CharacterStateLoadingMappable {
  String toJson() {
    return CharacterStateLoadingMapper.ensureInitialized()
        .encodeJson<CharacterStateLoading>(this as CharacterStateLoading);
  }

  Map<String, dynamic> toMap() {
    return CharacterStateLoadingMapper.ensureInitialized()
        .encodeMap<CharacterStateLoading>(this as CharacterStateLoading);
  }

  CharacterStateLoadingCopyWith<
    CharacterStateLoading,
    CharacterStateLoading,
    CharacterStateLoading
  >
  get copyWith =>
      _CharacterStateLoadingCopyWithImpl<
        CharacterStateLoading,
        CharacterStateLoading
      >(this as CharacterStateLoading, $identity, $identity);
  @override
  String toString() {
    return CharacterStateLoadingMapper.ensureInitialized().stringifyValue(
      this as CharacterStateLoading,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterStateLoadingMapper.ensureInitialized().equalsValue(
      this as CharacterStateLoading,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterStateLoadingMapper.ensureInitialized().hashValue(
      this as CharacterStateLoading,
    );
  }
}

extension CharacterStateLoadingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterStateLoading, $Out> {
  CharacterStateLoadingCopyWith<$R, CharacterStateLoading, $Out>
  get $asCharacterStateLoading => $base.as(
    (v, t, t2) => _CharacterStateLoadingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterStateLoadingCopyWith<
  $R,
  $In extends CharacterStateLoading,
  $Out
>
    implements CharacterStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  CharacterStateLoadingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterStateLoadingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterStateLoading, $Out>
    implements CharacterStateLoadingCopyWith<$R, CharacterStateLoading, $Out> {
  _CharacterStateLoadingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterStateLoading> $mapper =
      CharacterStateLoadingMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  CharacterStateLoading $make(CopyWithData data) => CharacterStateLoading();

  @override
  CharacterStateLoadingCopyWith<$R2, CharacterStateLoading, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CharacterStateLoadingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CharacterStateLoadedMapper extends ClassMapperBase<CharacterStateLoaded> {
  CharacterStateLoadedMapper._();

  static CharacterStateLoadedMapper? _instance;
  static CharacterStateLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterStateLoadedMapper._());
      CharacterStateMapper.ensureInitialized();
      CharacterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterStateLoaded';

  static List<Character> _$characters(CharacterStateLoaded v) => v.characters;
  static const Field<CharacterStateLoaded, List<Character>> _f$characters =
      Field('characters', _$characters);
  static int _$currentPage(CharacterStateLoaded v) => v.currentPage;
  static const Field<CharacterStateLoaded, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
    opt: true,
    def: 1,
  );
  static bool _$hasReachedMax(CharacterStateLoaded v) => v.hasReachedMax;
  static const Field<CharacterStateLoaded, bool> _f$hasReachedMax = Field(
    'hasReachedMax',
    _$hasReachedMax,
    opt: true,
    def: false,
  );
  static bool _$isFetchingMore(CharacterStateLoaded v) => v.isFetchingMore;
  static const Field<CharacterStateLoaded, bool> _f$isFetchingMore = Field(
    'isFetchingMore',
    _$isFetchingMore,
    opt: true,
    def: false,
  );
  static Character? _$character(CharacterStateLoaded v) => v.character;
  static const Field<CharacterStateLoaded, Character> _f$character = Field(
    'character',
    _$character,
    opt: true,
  );

  @override
  final MappableFields<CharacterStateLoaded> fields = const {
    #characters: _f$characters,
    #currentPage: _f$currentPage,
    #hasReachedMax: _f$hasReachedMax,
    #isFetchingMore: _f$isFetchingMore,
    #character: _f$character,
  };

  static CharacterStateLoaded _instantiate(DecodingData data) {
    return CharacterStateLoaded(
      characters: data.dec(_f$characters),
      currentPage: data.dec(_f$currentPage),
      hasReachedMax: data.dec(_f$hasReachedMax),
      isFetchingMore: data.dec(_f$isFetchingMore),
      character: data.dec(_f$character),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterStateLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterStateLoaded>(map);
  }

  static CharacterStateLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterStateLoaded>(json);
  }
}

mixin CharacterStateLoadedMappable {
  String toJson() {
    return CharacterStateLoadedMapper.ensureInitialized()
        .encodeJson<CharacterStateLoaded>(this as CharacterStateLoaded);
  }

  Map<String, dynamic> toMap() {
    return CharacterStateLoadedMapper.ensureInitialized()
        .encodeMap<CharacterStateLoaded>(this as CharacterStateLoaded);
  }

  CharacterStateLoadedCopyWith<
    CharacterStateLoaded,
    CharacterStateLoaded,
    CharacterStateLoaded
  >
  get copyWith =>
      _CharacterStateLoadedCopyWithImpl<
        CharacterStateLoaded,
        CharacterStateLoaded
      >(this as CharacterStateLoaded, $identity, $identity);
  @override
  String toString() {
    return CharacterStateLoadedMapper.ensureInitialized().stringifyValue(
      this as CharacterStateLoaded,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterStateLoadedMapper.ensureInitialized().equalsValue(
      this as CharacterStateLoaded,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterStateLoadedMapper.ensureInitialized().hashValue(
      this as CharacterStateLoaded,
    );
  }
}

extension CharacterStateLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterStateLoaded, $Out> {
  CharacterStateLoadedCopyWith<$R, CharacterStateLoaded, $Out>
  get $asCharacterStateLoaded => $base.as(
    (v, t, t2) => _CharacterStateLoadedCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterStateLoadedCopyWith<
  $R,
  $In extends CharacterStateLoaded,
  $Out
>
    implements CharacterStateCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Character, CharacterCopyWith<$R, Character, Character>>
  get characters;
  CharacterCopyWith<$R, Character, Character>? get character;
  @override
  $R call({
    List<Character>? characters,
    int? currentPage,
    bool? hasReachedMax,
    bool? isFetchingMore,
    Character? character,
  });
  CharacterStateLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterStateLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterStateLoaded, $Out>
    implements CharacterStateLoadedCopyWith<$R, CharacterStateLoaded, $Out> {
  _CharacterStateLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterStateLoaded> $mapper =
      CharacterStateLoadedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Character, CharacterCopyWith<$R, Character, Character>>
  get characters => ListCopyWith(
    $value.characters,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(characters: v),
  );
  @override
  CharacterCopyWith<$R, Character, Character>? get character =>
      $value.character?.copyWith.$chain((v) => call(character: v));
  @override
  $R call({
    List<Character>? characters,
    int? currentPage,
    bool? hasReachedMax,
    bool? isFetchingMore,
    Object? character = $none,
  }) => $apply(
    FieldCopyWithData({
      if (characters != null) #characters: characters,
      if (currentPage != null) #currentPage: currentPage,
      if (hasReachedMax != null) #hasReachedMax: hasReachedMax,
      if (isFetchingMore != null) #isFetchingMore: isFetchingMore,
      if (character != $none) #character: character,
    }),
  );
  @override
  CharacterStateLoaded $make(CopyWithData data) => CharacterStateLoaded(
    characters: data.get(#characters, or: $value.characters),
    currentPage: data.get(#currentPage, or: $value.currentPage),
    hasReachedMax: data.get(#hasReachedMax, or: $value.hasReachedMax),
    isFetchingMore: data.get(#isFetchingMore, or: $value.isFetchingMore),
    character: data.get(#character, or: $value.character),
  );

  @override
  CharacterStateLoadedCopyWith<$R2, CharacterStateLoaded, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CharacterStateLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CharacterStateErrorMapper extends ClassMapperBase<CharacterStateError> {
  CharacterStateErrorMapper._();

  static CharacterStateErrorMapper? _instance;
  static CharacterStateErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterStateErrorMapper._());
      CharacterStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterStateError';

  static String _$message(CharacterStateError v) => v.message;
  static const Field<CharacterStateError, String> _f$message = Field(
    'message',
    _$message,
  );

  @override
  final MappableFields<CharacterStateError> fields = const {
    #message: _f$message,
  };

  static CharacterStateError _instantiate(DecodingData data) {
    return CharacterStateError(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterStateError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterStateError>(map);
  }

  static CharacterStateError fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterStateError>(json);
  }
}

mixin CharacterStateErrorMappable {
  String toJson() {
    return CharacterStateErrorMapper.ensureInitialized()
        .encodeJson<CharacterStateError>(this as CharacterStateError);
  }

  Map<String, dynamic> toMap() {
    return CharacterStateErrorMapper.ensureInitialized()
        .encodeMap<CharacterStateError>(this as CharacterStateError);
  }

  CharacterStateErrorCopyWith<
    CharacterStateError,
    CharacterStateError,
    CharacterStateError
  >
  get copyWith =>
      _CharacterStateErrorCopyWithImpl<
        CharacterStateError,
        CharacterStateError
      >(this as CharacterStateError, $identity, $identity);
  @override
  String toString() {
    return CharacterStateErrorMapper.ensureInitialized().stringifyValue(
      this as CharacterStateError,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterStateErrorMapper.ensureInitialized().equalsValue(
      this as CharacterStateError,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterStateErrorMapper.ensureInitialized().hashValue(
      this as CharacterStateError,
    );
  }
}

extension CharacterStateErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterStateError, $Out> {
  CharacterStateErrorCopyWith<$R, CharacterStateError, $Out>
  get $asCharacterStateError => $base.as(
    (v, t, t2) => _CharacterStateErrorCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterStateErrorCopyWith<
  $R,
  $In extends CharacterStateError,
  $Out
>
    implements CharacterStateCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  CharacterStateErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterStateErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterStateError, $Out>
    implements CharacterStateErrorCopyWith<$R, CharacterStateError, $Out> {
  _CharacterStateErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterStateError> $mapper =
      CharacterStateErrorMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  CharacterStateError $make(CopyWithData data) =>
      CharacterStateError(message: data.get(#message, or: $value.message));

  @override
  CharacterStateErrorCopyWith<$R2, CharacterStateError, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CharacterStateErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

