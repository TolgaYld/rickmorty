// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character.state.dart';

class CharacterStateMapper extends ClassMapperBase<CharacterState> {
  CharacterStateMapper._();

  static CharacterStateMapper? _instance;
  static CharacterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterStateMapper._());
      CharacterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterState';

  static List<Character> _$characters(CharacterState v) => v.characters;
  static const Field<CharacterState, List<Character>> _f$characters = Field(
    'characters',
    _$characters,
    opt: true,
    def: const [],
  );
  static int _$currentPage(CharacterState v) => v.currentPage;
  static const Field<CharacterState, int> _f$currentPage = Field(
    'currentPage',
    _$currentPage,
    opt: true,
    def: 1,
  );
  static bool _$hasReachedMax(CharacterState v) => v.hasReachedMax;
  static const Field<CharacterState, bool> _f$hasReachedMax = Field(
    'hasReachedMax',
    _$hasReachedMax,
    opt: true,
    def: false,
  );
  static bool _$isFetchingMore(CharacterState v) => v.isFetchingMore;
  static const Field<CharacterState, bool> _f$isFetchingMore = Field(
    'isFetchingMore',
    _$isFetchingMore,
    opt: true,
    def: false,
  );
  static Character? _$character(CharacterState v) => v.character;
  static const Field<CharacterState, Character> _f$character = Field(
    'character',
    _$character,
    opt: true,
  );

  @override
  final MappableFields<CharacterState> fields = const {
    #characters: _f$characters,
    #currentPage: _f$currentPage,
    #hasReachedMax: _f$hasReachedMax,
    #isFetchingMore: _f$isFetchingMore,
    #character: _f$character,
  };

  static CharacterState _instantiate(DecodingData data) {
    return CharacterState(
      characters: data.dec(_f$characters),
      currentPage: data.dec(_f$currentPage),
      hasReachedMax: data.dec(_f$hasReachedMax),
      isFetchingMore: data.dec(_f$isFetchingMore),
      character: data.dec(_f$character),
    );
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
  String toJson() {
    return CharacterStateMapper.ensureInitialized().encodeJson<CharacterState>(
      this as CharacterState,
    );
  }

  Map<String, dynamic> toMap() {
    return CharacterStateMapper.ensureInitialized().encodeMap<CharacterState>(
      this as CharacterState,
    );
  }

  CharacterStateCopyWith<CharacterState, CharacterState, CharacterState>
  get copyWith => _CharacterStateCopyWithImpl<CharacterState, CharacterState>(
    this as CharacterState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CharacterStateMapper.ensureInitialized().stringifyValue(
      this as CharacterState,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterStateMapper.ensureInitialized().equalsValue(
      this as CharacterState,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterStateMapper.ensureInitialized().hashValue(
      this as CharacterState,
    );
  }
}

extension CharacterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterState, $Out> {
  CharacterStateCopyWith<$R, CharacterState, $Out> get $asCharacterState =>
      $base.as((v, t, t2) => _CharacterStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CharacterStateCopyWith<$R, $In extends CharacterState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Character, CharacterCopyWith<$R, Character, Character>>
  get characters;
  CharacterCopyWith<$R, Character, Character>? get character;
  $R call({
    List<Character>? characters,
    int? currentPage,
    bool? hasReachedMax,
    bool? isFetchingMore,
    Character? character,
  });
  CharacterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterState, $Out>
    implements CharacterStateCopyWith<$R, CharacterState, $Out> {
  _CharacterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterState> $mapper =
      CharacterStateMapper.ensureInitialized();
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
  CharacterState $make(CopyWithData data) => CharacterState(
    characters: data.get(#characters, or: $value.characters),
    currentPage: data.get(#currentPage, or: $value.currentPage),
    hasReachedMax: data.get(#hasReachedMax, or: $value.hasReachedMax),
    isFetchingMore: data.get(#isFetchingMore, or: $value.isFetchingMore),
    character: data.get(#character, or: $value.character),
  );

  @override
  CharacterStateCopyWith<$R2, CharacterState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

