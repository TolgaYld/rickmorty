// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character.model.dart';

class CharacterLocationMapper extends ClassMapperBase<CharacterLocation> {
  CharacterLocationMapper._();

  static CharacterLocationMapper? _instance;
  static CharacterLocationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterLocationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterLocation';

  static String _$name(CharacterLocation v) => v.name;
  static const Field<CharacterLocation, String> _f$name = Field('name', _$name);
  static String _$url(CharacterLocation v) => v.url;
  static const Field<CharacterLocation, String> _f$url = Field('url', _$url);

  @override
  final MappableFields<CharacterLocation> fields = const {
    #name: _f$name,
    #url: _f$url,
  };

  static CharacterLocation _instantiate(DecodingData data) {
    return CharacterLocation(name: data.dec(_f$name), url: data.dec(_f$url));
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterLocation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterLocation>(map);
  }

  static CharacterLocation fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterLocation>(json);
  }
}

mixin CharacterLocationMappable {
  String toJson() {
    return CharacterLocationMapper.ensureInitialized()
        .encodeJson<CharacterLocation>(this as CharacterLocation);
  }

  Map<String, dynamic> toMap() {
    return CharacterLocationMapper.ensureInitialized()
        .encodeMap<CharacterLocation>(this as CharacterLocation);
  }

  CharacterLocationCopyWith<
    CharacterLocation,
    CharacterLocation,
    CharacterLocation
  >
  get copyWith =>
      _CharacterLocationCopyWithImpl<CharacterLocation, CharacterLocation>(
        this as CharacterLocation,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CharacterLocationMapper.ensureInitialized().stringifyValue(
      this as CharacterLocation,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterLocationMapper.ensureInitialized().equalsValue(
      this as CharacterLocation,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterLocationMapper.ensureInitialized().hashValue(
      this as CharacterLocation,
    );
  }
}

extension CharacterLocationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterLocation, $Out> {
  CharacterLocationCopyWith<$R, CharacterLocation, $Out>
  get $asCharacterLocation => $base.as(
    (v, t, t2) => _CharacterLocationCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterLocationCopyWith<
  $R,
  $In extends CharacterLocation,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? url});
  CharacterLocationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterLocationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterLocation, $Out>
    implements CharacterLocationCopyWith<$R, CharacterLocation, $Out> {
  _CharacterLocationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterLocation> $mapper =
      CharacterLocationMapper.ensureInitialized();
  @override
  $R call({String? name, String? url}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (url != null) #url: url,
    }),
  );
  @override
  CharacterLocation $make(CopyWithData data) => CharacterLocation(
    name: data.get(#name, or: $value.name),
    url: data.get(#url, or: $value.url),
  );

  @override
  CharacterLocationCopyWith<$R2, CharacterLocation, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterLocationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CharacterMapper extends ClassMapperBase<Character> {
  CharacterMapper._();

  static CharacterMapper? _instance;
  static CharacterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterMapper._());
      VitalityMapper.ensureInitialized();
      GenderMapper.ensureInitialized();
      SpeciesMapper.ensureInitialized();
      CharacterLocationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Character';

  static int _$id(Character v) => v.id;
  static const Field<Character, int> _f$id = Field('id', _$id);
  static String _$name(Character v) => v.name;
  static const Field<Character, String> _f$name = Field('name', _$name);
  static Vitality _$vitality(Character v) => v.vitality;
  static const Field<Character, Vitality> _f$vitality = Field(
    'vitality',
    _$vitality,
    key: r'status',
  );
  static Gender _$gender(Character v) => v.gender;
  static const Field<Character, Gender> _f$gender = Field('gender', _$gender);
  static Species _$species(Character v) => v.species;
  static const Field<Character, Species> _f$species = Field(
    'species',
    _$species,
  );
  static String _$type(Character v) => v.type;
  static const Field<Character, String> _f$type = Field('type', _$type);
  static CharacterLocation _$origin(Character v) => v.origin;
  static const Field<Character, CharacterLocation> _f$origin = Field(
    'origin',
    _$origin,
  );
  static CharacterLocation _$location(Character v) => v.location;
  static const Field<Character, CharacterLocation> _f$location = Field(
    'location',
    _$location,
  );
  static String _$image(Character v) => v.image;
  static const Field<Character, String> _f$image = Field('image', _$image);
  static List<String> _$episode(Character v) => v.episode;
  static const Field<Character, List<String>> _f$episode = Field(
    'episode',
    _$episode,
  );
  static String _$url(Character v) => v.url;
  static const Field<Character, String> _f$url = Field('url', _$url);
  static DateTime _$created(Character v) => v.created;
  static const Field<Character, DateTime> _f$created = Field(
    'created',
    _$created,
  );

  @override
  final MappableFields<Character> fields = const {
    #id: _f$id,
    #name: _f$name,
    #vitality: _f$vitality,
    #gender: _f$gender,
    #species: _f$species,
    #type: _f$type,
    #origin: _f$origin,
    #location: _f$location,
    #image: _f$image,
    #episode: _f$episode,
    #url: _f$url,
    #created: _f$created,
  };

  static Character _instantiate(DecodingData data) {
    return Character(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      vitality: data.dec(_f$vitality),
      gender: data.dec(_f$gender),
      species: data.dec(_f$species),
      type: data.dec(_f$type),
      origin: data.dec(_f$origin),
      location: data.dec(_f$location),
      image: data.dec(_f$image),
      episode: data.dec(_f$episode),
      url: data.dec(_f$url),
      created: data.dec(_f$created),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Character fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Character>(map);
  }

  static Character fromJson(String json) {
    return ensureInitialized().decodeJson<Character>(json);
  }
}

mixin CharacterMappable {
  String toJson() {
    return CharacterMapper.ensureInitialized().encodeJson<Character>(
      this as Character,
    );
  }

  Map<String, dynamic> toMap() {
    return CharacterMapper.ensureInitialized().encodeMap<Character>(
      this as Character,
    );
  }

  CharacterCopyWith<Character, Character, Character> get copyWith =>
      _CharacterCopyWithImpl<Character, Character>(
        this as Character,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CharacterMapper.ensureInitialized().stringifyValue(
      this as Character,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterMapper.ensureInitialized().equalsValue(
      this as Character,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterMapper.ensureInitialized().hashValue(this as Character);
  }
}

extension CharacterValueCopy<$R, $Out> on ObjectCopyWith<$R, Character, $Out> {
  CharacterCopyWith<$R, Character, $Out> get $asCharacter =>
      $base.as((v, t, t2) => _CharacterCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CharacterCopyWith<$R, $In extends Character, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CharacterLocationCopyWith<$R, CharacterLocation, CharacterLocation>
  get origin;
  CharacterLocationCopyWith<$R, CharacterLocation, CharacterLocation>
  get location;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get episode;
  $R call({
    int? id,
    String? name,
    Vitality? vitality,
    Gender? gender,
    Species? species,
    String? type,
    CharacterLocation? origin,
    CharacterLocation? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  });
  CharacterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CharacterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Character, $Out>
    implements CharacterCopyWith<$R, Character, $Out> {
  _CharacterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Character> $mapper =
      CharacterMapper.ensureInitialized();
  @override
  CharacterLocationCopyWith<$R, CharacterLocation, CharacterLocation>
  get origin => $value.origin.copyWith.$chain((v) => call(origin: v));
  @override
  CharacterLocationCopyWith<$R, CharacterLocation, CharacterLocation>
  get location => $value.location.copyWith.$chain((v) => call(location: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get episode =>
      ListCopyWith(
        $value.episode,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(episode: v),
      );
  @override
  $R call({
    int? id,
    String? name,
    Vitality? vitality,
    Gender? gender,
    Species? species,
    String? type,
    CharacterLocation? origin,
    CharacterLocation? location,
    String? image,
    List<String>? episode,
    String? url,
    DateTime? created,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (vitality != null) #vitality: vitality,
      if (gender != null) #gender: gender,
      if (species != null) #species: species,
      if (type != null) #type: type,
      if (origin != null) #origin: origin,
      if (location != null) #location: location,
      if (image != null) #image: image,
      if (episode != null) #episode: episode,
      if (url != null) #url: url,
      if (created != null) #created: created,
    }),
  );
  @override
  Character $make(CopyWithData data) => Character(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    vitality: data.get(#vitality, or: $value.vitality),
    gender: data.get(#gender, or: $value.gender),
    species: data.get(#species, or: $value.species),
    type: data.get(#type, or: $value.type),
    origin: data.get(#origin, or: $value.origin),
    location: data.get(#location, or: $value.location),
    image: data.get(#image, or: $value.image),
    episode: data.get(#episode, or: $value.episode),
    url: data.get(#url, or: $value.url),
    created: data.get(#created, or: $value.created),
  );

  @override
  CharacterCopyWith<$R2, Character, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

