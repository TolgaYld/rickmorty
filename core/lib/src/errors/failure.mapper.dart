// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'failure.dart';

class FailureMapper extends ClassMapperBase<Failure> {
  FailureMapper._();

  static FailureMapper? _instance;
  static FailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FailureMapper._());
      ApiFailureMapper.ensureInitialized();
      SqlFailureMapper.ensureInitialized();
      CacheFailureMapper.ensureInitialized();
      LocalDbFailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Failure';

  static String _$message(Failure v) => v.message;
  static const Field<Failure, String> _f$message = Field('message', _$message);
  static bool _$isUnknownException(Failure v) => v.isUnknownException;
  static const Field<Failure, bool> _f$isUnknownException = Field(
    'isUnknownException',
    _$isUnknownException,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<Failure> fields = const {
    #message: _f$message,
    #isUnknownException: _f$isUnknownException,
  };

  static Failure _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('Failure');
  }

  @override
  final Function instantiate = _instantiate;

  static Failure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Failure>(map);
  }

  static Failure fromJson(String json) {
    return ensureInitialized().decodeJson<Failure>(json);
  }
}

mixin FailureMappable {
  String toJson();
  Map<String, dynamic> toMap();
  FailureCopyWith<Failure, Failure, Failure> get copyWith;
}

abstract class FailureCopyWith<$R, $In extends Failure, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message});
  FailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ApiFailureMapper extends ClassMapperBase<ApiFailure> {
  ApiFailureMapper._();

  static ApiFailureMapper? _instance;
  static ApiFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiFailureMapper._());
      FailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ApiFailure';

  static String _$message(ApiFailure v) => v.message;
  static const Field<ApiFailure, String> _f$message = Field(
    'message',
    _$message,
  );
  static bool _$isUnknownException(ApiFailure v) => v.isUnknownException;
  static const Field<ApiFailure, bool> _f$isUnknownException = Field(
    'isUnknownException',
    _$isUnknownException,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<ApiFailure> fields = const {
    #message: _f$message,
    #isUnknownException: _f$isUnknownException,
  };

  static ApiFailure _instantiate(DecodingData data) {
    return ApiFailure(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static ApiFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiFailure>(map);
  }

  static ApiFailure fromJson(String json) {
    return ensureInitialized().decodeJson<ApiFailure>(json);
  }
}

mixin ApiFailureMappable {
  String toJson() {
    return ApiFailureMapper.ensureInitialized().encodeJson<ApiFailure>(
      this as ApiFailure,
    );
  }

  Map<String, dynamic> toMap() {
    return ApiFailureMapper.ensureInitialized().encodeMap<ApiFailure>(
      this as ApiFailure,
    );
  }

  ApiFailureCopyWith<ApiFailure, ApiFailure, ApiFailure> get copyWith =>
      _ApiFailureCopyWithImpl<ApiFailure, ApiFailure>(
        this as ApiFailure,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ApiFailureMapper.ensureInitialized().stringifyValue(
      this as ApiFailure,
    );
  }

  @override
  bool operator ==(Object other) {
    return ApiFailureMapper.ensureInitialized().equalsValue(
      this as ApiFailure,
      other,
    );
  }

  @override
  int get hashCode {
    return ApiFailureMapper.ensureInitialized().hashValue(this as ApiFailure);
  }
}

extension ApiFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApiFailure, $Out> {
  ApiFailureCopyWith<$R, ApiFailure, $Out> get $asApiFailure =>
      $base.as((v, t, t2) => _ApiFailureCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApiFailureCopyWith<$R, $In extends ApiFailure, $Out>
    implements FailureCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  ApiFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiFailure, $Out>
    implements ApiFailureCopyWith<$R, ApiFailure, $Out> {
  _ApiFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiFailure> $mapper =
      ApiFailureMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  ApiFailure $make(CopyWithData data) =>
      ApiFailure(message: data.get(#message, or: $value.message));

  @override
  ApiFailureCopyWith<$R2, ApiFailure, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ApiFailureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SqlFailureMapper extends ClassMapperBase<SqlFailure> {
  SqlFailureMapper._();

  static SqlFailureMapper? _instance;
  static SqlFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SqlFailureMapper._());
      FailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SqlFailure';

  static String _$message(SqlFailure v) => v.message;
  static const Field<SqlFailure, String> _f$message = Field(
    'message',
    _$message,
  );
  static bool _$isUnknownException(SqlFailure v) => v.isUnknownException;
  static const Field<SqlFailure, bool> _f$isUnknownException = Field(
    'isUnknownException',
    _$isUnknownException,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<SqlFailure> fields = const {
    #message: _f$message,
    #isUnknownException: _f$isUnknownException,
  };

  static SqlFailure _instantiate(DecodingData data) {
    return SqlFailure(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static SqlFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SqlFailure>(map);
  }

  static SqlFailure fromJson(String json) {
    return ensureInitialized().decodeJson<SqlFailure>(json);
  }
}

mixin SqlFailureMappable {
  String toJson() {
    return SqlFailureMapper.ensureInitialized().encodeJson<SqlFailure>(
      this as SqlFailure,
    );
  }

  Map<String, dynamic> toMap() {
    return SqlFailureMapper.ensureInitialized().encodeMap<SqlFailure>(
      this as SqlFailure,
    );
  }

  SqlFailureCopyWith<SqlFailure, SqlFailure, SqlFailure> get copyWith =>
      _SqlFailureCopyWithImpl<SqlFailure, SqlFailure>(
        this as SqlFailure,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SqlFailureMapper.ensureInitialized().stringifyValue(
      this as SqlFailure,
    );
  }

  @override
  bool operator ==(Object other) {
    return SqlFailureMapper.ensureInitialized().equalsValue(
      this as SqlFailure,
      other,
    );
  }

  @override
  int get hashCode {
    return SqlFailureMapper.ensureInitialized().hashValue(this as SqlFailure);
  }
}

extension SqlFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SqlFailure, $Out> {
  SqlFailureCopyWith<$R, SqlFailure, $Out> get $asSqlFailure =>
      $base.as((v, t, t2) => _SqlFailureCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SqlFailureCopyWith<$R, $In extends SqlFailure, $Out>
    implements FailureCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  SqlFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SqlFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SqlFailure, $Out>
    implements SqlFailureCopyWith<$R, SqlFailure, $Out> {
  _SqlFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SqlFailure> $mapper =
      SqlFailureMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  SqlFailure $make(CopyWithData data) =>
      SqlFailure(message: data.get(#message, or: $value.message));

  @override
  SqlFailureCopyWith<$R2, SqlFailure, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SqlFailureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CacheFailureMapper extends ClassMapperBase<CacheFailure> {
  CacheFailureMapper._();

  static CacheFailureMapper? _instance;
  static CacheFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CacheFailureMapper._());
      FailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CacheFailure';

  static String _$message(CacheFailure v) => v.message;
  static const Field<CacheFailure, String> _f$message = Field(
    'message',
    _$message,
  );
  static bool _$isUnknownException(CacheFailure v) => v.isUnknownException;
  static const Field<CacheFailure, bool> _f$isUnknownException = Field(
    'isUnknownException',
    _$isUnknownException,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<CacheFailure> fields = const {
    #message: _f$message,
    #isUnknownException: _f$isUnknownException,
  };

  static CacheFailure _instantiate(DecodingData data) {
    return CacheFailure(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static CacheFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CacheFailure>(map);
  }

  static CacheFailure fromJson(String json) {
    return ensureInitialized().decodeJson<CacheFailure>(json);
  }
}

mixin CacheFailureMappable {
  String toJson() {
    return CacheFailureMapper.ensureInitialized().encodeJson<CacheFailure>(
      this as CacheFailure,
    );
  }

  Map<String, dynamic> toMap() {
    return CacheFailureMapper.ensureInitialized().encodeMap<CacheFailure>(
      this as CacheFailure,
    );
  }

  CacheFailureCopyWith<CacheFailure, CacheFailure, CacheFailure> get copyWith =>
      _CacheFailureCopyWithImpl<CacheFailure, CacheFailure>(
        this as CacheFailure,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CacheFailureMapper.ensureInitialized().stringifyValue(
      this as CacheFailure,
    );
  }

  @override
  bool operator ==(Object other) {
    return CacheFailureMapper.ensureInitialized().equalsValue(
      this as CacheFailure,
      other,
    );
  }

  @override
  int get hashCode {
    return CacheFailureMapper.ensureInitialized().hashValue(
      this as CacheFailure,
    );
  }
}

extension CacheFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CacheFailure, $Out> {
  CacheFailureCopyWith<$R, CacheFailure, $Out> get $asCacheFailure =>
      $base.as((v, t, t2) => _CacheFailureCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CacheFailureCopyWith<$R, $In extends CacheFailure, $Out>
    implements FailureCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  CacheFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CacheFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CacheFailure, $Out>
    implements CacheFailureCopyWith<$R, CacheFailure, $Out> {
  _CacheFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CacheFailure> $mapper =
      CacheFailureMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  CacheFailure $make(CopyWithData data) =>
      CacheFailure(message: data.get(#message, or: $value.message));

  @override
  CacheFailureCopyWith<$R2, CacheFailure, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CacheFailureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LocalDbFailureMapper extends ClassMapperBase<LocalDbFailure> {
  LocalDbFailureMapper._();

  static LocalDbFailureMapper? _instance;
  static LocalDbFailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocalDbFailureMapper._());
      FailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LocalDbFailure';

  static String _$message(LocalDbFailure v) => v.message;
  static const Field<LocalDbFailure, String> _f$message = Field(
    'message',
    _$message,
  );
  static bool _$isUnknownException(LocalDbFailure v) => v.isUnknownException;
  static const Field<LocalDbFailure, bool> _f$isUnknownException = Field(
    'isUnknownException',
    _$isUnknownException,
    mode: FieldMode.member,
  );

  @override
  final MappableFields<LocalDbFailure> fields = const {
    #message: _f$message,
    #isUnknownException: _f$isUnknownException,
  };

  static LocalDbFailure _instantiate(DecodingData data) {
    return LocalDbFailure(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static LocalDbFailure fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocalDbFailure>(map);
  }

  static LocalDbFailure fromJson(String json) {
    return ensureInitialized().decodeJson<LocalDbFailure>(json);
  }
}

mixin LocalDbFailureMappable {
  String toJson() {
    return LocalDbFailureMapper.ensureInitialized().encodeJson<LocalDbFailure>(
      this as LocalDbFailure,
    );
  }

  Map<String, dynamic> toMap() {
    return LocalDbFailureMapper.ensureInitialized().encodeMap<LocalDbFailure>(
      this as LocalDbFailure,
    );
  }

  LocalDbFailureCopyWith<LocalDbFailure, LocalDbFailure, LocalDbFailure>
  get copyWith => _LocalDbFailureCopyWithImpl<LocalDbFailure, LocalDbFailure>(
    this as LocalDbFailure,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return LocalDbFailureMapper.ensureInitialized().stringifyValue(
      this as LocalDbFailure,
    );
  }

  @override
  bool operator ==(Object other) {
    return LocalDbFailureMapper.ensureInitialized().equalsValue(
      this as LocalDbFailure,
      other,
    );
  }

  @override
  int get hashCode {
    return LocalDbFailureMapper.ensureInitialized().hashValue(
      this as LocalDbFailure,
    );
  }
}

extension LocalDbFailureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocalDbFailure, $Out> {
  LocalDbFailureCopyWith<$R, LocalDbFailure, $Out> get $asLocalDbFailure =>
      $base.as((v, t, t2) => _LocalDbFailureCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LocalDbFailureCopyWith<$R, $In extends LocalDbFailure, $Out>
    implements FailureCopyWith<$R, $In, $Out> {
  @override
  $R call({String? message});
  LocalDbFailureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _LocalDbFailureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocalDbFailure, $Out>
    implements LocalDbFailureCopyWith<$R, LocalDbFailure, $Out> {
  _LocalDbFailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocalDbFailure> $mapper =
      LocalDbFailureMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  LocalDbFailure $make(CopyWithData data) =>
      LocalDbFailure(message: data.get(#message, or: $value.message));

  @override
  LocalDbFailureCopyWith<$R2, LocalDbFailure, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LocalDbFailureCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

