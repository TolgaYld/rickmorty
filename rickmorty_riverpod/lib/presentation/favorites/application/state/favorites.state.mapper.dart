// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'favorites.state.dart';

class FavoritesStateMapper extends ClassMapperBase<FavoritesState> {
  FavoritesStateMapper._();

  static FavoritesStateMapper? _instance;
  static FavoritesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoritesStateMapper._());
      CharacterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FavoritesState';

  static List<Character> _$favorites(FavoritesState v) => v.favorites;
  static const Field<FavoritesState, List<Character>> _f$favorites = Field(
    'favorites',
    _$favorites,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<FavoritesState> fields = const {
    #favorites: _f$favorites,
  };

  static FavoritesState _instantiate(DecodingData data) {
    return FavoritesState(favorites: data.dec(_f$favorites));
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
  String toJson() {
    return FavoritesStateMapper.ensureInitialized().encodeJson<FavoritesState>(
      this as FavoritesState,
    );
  }

  Map<String, dynamic> toMap() {
    return FavoritesStateMapper.ensureInitialized().encodeMap<FavoritesState>(
      this as FavoritesState,
    );
  }

  FavoritesStateCopyWith<FavoritesState, FavoritesState, FavoritesState>
  get copyWith => _FavoritesStateCopyWithImpl<FavoritesState, FavoritesState>(
    this as FavoritesState,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return FavoritesStateMapper.ensureInitialized().stringifyValue(
      this as FavoritesState,
    );
  }

  @override
  bool operator ==(Object other) {
    return FavoritesStateMapper.ensureInitialized().equalsValue(
      this as FavoritesState,
      other,
    );
  }

  @override
  int get hashCode {
    return FavoritesStateMapper.ensureInitialized().hashValue(
      this as FavoritesState,
    );
  }
}

extension FavoritesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FavoritesState, $Out> {
  FavoritesStateCopyWith<$R, FavoritesState, $Out> get $asFavoritesState =>
      $base.as((v, t, t2) => _FavoritesStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FavoritesStateCopyWith<$R, $In extends FavoritesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Character, CharacterCopyWith<$R, Character, Character>>
  get favorites;
  $R call({List<Character>? favorites});
  FavoritesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FavoritesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FavoritesState, $Out>
    implements FavoritesStateCopyWith<$R, FavoritesState, $Out> {
  _FavoritesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FavoritesState> $mapper =
      FavoritesStateMapper.ensureInitialized();
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
  FavoritesState $make(CopyWithData data) =>
      FavoritesState(favorites: data.get(#favorites, or: $value.favorites));

  @override
  FavoritesStateCopyWith<$R2, FavoritesState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FavoritesStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

