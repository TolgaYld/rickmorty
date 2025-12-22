// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'episode.model.dart';

class EpisodeMapper extends ClassMapperBase<Episode> {
  EpisodeMapper._();

  static EpisodeMapper? _instance;
  static EpisodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EpisodeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Episode';

  static int _$id(Episode v) => v.id;
  static const Field<Episode, int> _f$id = Field('id', _$id);
  static String _$name(Episode v) => v.name;
  static const Field<Episode, String> _f$name = Field('name', _$name);
  static DateTime _$airDate(Episode v) => v.airDate;
  static const Field<Episode, DateTime> _f$airDate = Field(
    'airDate',
    _$airDate,
    key: r'air_date',
    hook: AirDateHook(),
  );
  static String _$episode(Episode v) => v.episode;
  static const Field<Episode, String> _f$episode = Field('episode', _$episode);
  static List<String> _$characters(Episode v) => v.characters;
  static const Field<Episode, List<String>> _f$characters = Field(
    'characters',
    _$characters,
  );
  static String _$url(Episode v) => v.url;
  static const Field<Episode, String> _f$url = Field('url', _$url);
  static DateTime _$created(Episode v) => v.created;
  static const Field<Episode, DateTime> _f$created = Field(
    'created',
    _$created,
  );

  @override
  final MappableFields<Episode> fields = const {
    #id: _f$id,
    #name: _f$name,
    #airDate: _f$airDate,
    #episode: _f$episode,
    #characters: _f$characters,
    #url: _f$url,
    #created: _f$created,
  };

  static Episode _instantiate(DecodingData data) {
    return Episode(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      airDate: data.dec(_f$airDate),
      episode: data.dec(_f$episode),
      characters: data.dec(_f$characters),
      url: data.dec(_f$url),
      created: data.dec(_f$created),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Episode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Episode>(map);
  }

  static Episode fromJson(String json) {
    return ensureInitialized().decodeJson<Episode>(json);
  }
}

mixin EpisodeMappable {
  String toJson() {
    return EpisodeMapper.ensureInitialized().encodeJson<Episode>(
      this as Episode,
    );
  }

  Map<String, dynamic> toMap() {
    return EpisodeMapper.ensureInitialized().encodeMap<Episode>(
      this as Episode,
    );
  }

  EpisodeCopyWith<Episode, Episode, Episode> get copyWith =>
      _EpisodeCopyWithImpl<Episode, Episode>(
        this as Episode,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return EpisodeMapper.ensureInitialized().stringifyValue(this as Episode);
  }

  @override
  bool operator ==(Object other) {
    return EpisodeMapper.ensureInitialized().equalsValue(
      this as Episode,
      other,
    );
  }

  @override
  int get hashCode {
    return EpisodeMapper.ensureInitialized().hashValue(this as Episode);
  }
}

extension EpisodeValueCopy<$R, $Out> on ObjectCopyWith<$R, Episode, $Out> {
  EpisodeCopyWith<$R, Episode, $Out> get $asEpisode =>
      $base.as((v, t, t2) => _EpisodeCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class EpisodeCopyWith<$R, $In extends Episode, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get characters;
  $R call({
    int? id,
    String? name,
    DateTime? airDate,
    String? episode,
    List<String>? characters,
    String? url,
    DateTime? created,
  });
  EpisodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EpisodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Episode, $Out>
    implements EpisodeCopyWith<$R, Episode, $Out> {
  _EpisodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Episode> $mapper =
      EpisodeMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get characters =>
      ListCopyWith(
        $value.characters,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(characters: v),
      );
  @override
  $R call({
    int? id,
    String? name,
    DateTime? airDate,
    String? episode,
    List<String>? characters,
    String? url,
    DateTime? created,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (airDate != null) #airDate: airDate,
      if (episode != null) #episode: episode,
      if (characters != null) #characters: characters,
      if (url != null) #url: url,
      if (created != null) #created: created,
    }),
  );
  @override
  Episode $make(CopyWithData data) => Episode(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    airDate: data.get(#airDate, or: $value.airDate),
    episode: data.get(#episode, or: $value.episode),
    characters: data.get(#characters, or: $value.characters),
    url: data.get(#url, or: $value.url),
    created: data.get(#created, or: $value.created),
  );

  @override
  EpisodeCopyWith<$R2, Episode, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EpisodeCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

