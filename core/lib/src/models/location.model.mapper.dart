// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'location.model.dart';

class LocationMapper extends ClassMapperBase<Location> {
  LocationMapper._();

  static LocationMapper? _instance;
  static LocationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Location';

  static int _$id(Location v) => v.id;
  static const Field<Location, int> _f$id = Field('id', _$id);
  static String _$name(Location v) => v.name;
  static const Field<Location, String> _f$name = Field('name', _$name);
  static String _$type(Location v) => v.type;
  static const Field<Location, String> _f$type = Field('type', _$type);
  static String _$dimension(Location v) => v.dimension;
  static const Field<Location, String> _f$dimension = Field(
    'dimension',
    _$dimension,
  );
  static List<String> _$residents(Location v) => v.residents;
  static const Field<Location, List<String>> _f$residents = Field(
    'residents',
    _$residents,
  );
  static String _$url(Location v) => v.url;
  static const Field<Location, String> _f$url = Field('url', _$url);
  static DateTime _$created(Location v) => v.created;
  static const Field<Location, DateTime> _f$created = Field(
    'created',
    _$created,
  );

  @override
  final MappableFields<Location> fields = const {
    #id: _f$id,
    #name: _f$name,
    #type: _f$type,
    #dimension: _f$dimension,
    #residents: _f$residents,
    #url: _f$url,
    #created: _f$created,
  };

  static Location _instantiate(DecodingData data) {
    return Location(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      type: data.dec(_f$type),
      dimension: data.dec(_f$dimension),
      residents: data.dec(_f$residents),
      url: data.dec(_f$url),
      created: data.dec(_f$created),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Location fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Location>(map);
  }

  static Location fromJson(String json) {
    return ensureInitialized().decodeJson<Location>(json);
  }
}

mixin LocationMappable {
  String toJson() {
    return LocationMapper.ensureInitialized().encodeJson<Location>(
      this as Location,
    );
  }

  Map<String, dynamic> toMap() {
    return LocationMapper.ensureInitialized().encodeMap<Location>(
      this as Location,
    );
  }

  LocationCopyWith<Location, Location, Location> get copyWith =>
      _LocationCopyWithImpl<Location, Location>(
        this as Location,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LocationMapper.ensureInitialized().stringifyValue(this as Location);
  }

  @override
  bool operator ==(Object other) {
    return LocationMapper.ensureInitialized().equalsValue(
      this as Location,
      other,
    );
  }

  @override
  int get hashCode {
    return LocationMapper.ensureInitialized().hashValue(this as Location);
  }
}

extension LocationValueCopy<$R, $Out> on ObjectCopyWith<$R, Location, $Out> {
  LocationCopyWith<$R, Location, $Out> get $asLocation =>
      $base.as((v, t, t2) => _LocationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LocationCopyWith<$R, $In extends Location, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get residents;
  $R call({
    int? id,
    String? name,
    String? type,
    String? dimension,
    List<String>? residents,
    String? url,
    DateTime? created,
  });
  LocationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LocationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Location, $Out>
    implements LocationCopyWith<$R, Location, $Out> {
  _LocationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Location> $mapper =
      LocationMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get residents =>
      ListCopyWith(
        $value.residents,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(residents: v),
      );
  @override
  $R call({
    int? id,
    String? name,
    String? type,
    String? dimension,
    List<String>? residents,
    String? url,
    DateTime? created,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (name != null) #name: name,
      if (type != null) #type: type,
      if (dimension != null) #dimension: dimension,
      if (residents != null) #residents: residents,
      if (url != null) #url: url,
      if (created != null) #created: created,
    }),
  );
  @override
  Location $make(CopyWithData data) => Location(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    type: data.get(#type, or: $value.type),
    dimension: data.get(#dimension, or: $value.dimension),
    residents: data.get(#residents, or: $value.residents),
    url: data.get(#url, or: $value.url),
    created: data.get(#created, or: $value.created),
  );

  @override
  LocationCopyWith<$R2, Location, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LocationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

