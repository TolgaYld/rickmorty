// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'exception.dart';

class ApiExceptionMapper extends ClassMapperBase<ApiException> {
  ApiExceptionMapper._();

  static ApiExceptionMapper? _instance;
  static ApiExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiExceptionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApiException';

  static String _$message(ApiException v) => v.message;
  static const Field<ApiException, String> _f$message = Field(
    'message',
    _$message,
  );
  static bool _$isUnknownException(ApiException v) => v.isUnknownException;
  static const Field<ApiException, bool> _f$isUnknownException = Field(
    'isUnknownException',
    _$isUnknownException,
    opt: true,
    def: false,
  );
  static int? _$statusCode(ApiException v) => v.statusCode;
  static const Field<ApiException, int> _f$statusCode = Field(
    'statusCode',
    _$statusCode,
    opt: true,
  );

  @override
  final MappableFields<ApiException> fields = const {
    #message: _f$message,
    #isUnknownException: _f$isUnknownException,
    #statusCode: _f$statusCode,
  };

  static ApiException _instantiate(DecodingData data) {
    return ApiException(
      message: data.dec(_f$message),
      isUnknownException: data.dec(_f$isUnknownException),
      statusCode: data.dec(_f$statusCode),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ApiException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiException>(map);
  }

  static ApiException fromJson(String json) {
    return ensureInitialized().decodeJson<ApiException>(json);
  }
}

mixin ApiExceptionMappable {
  String toJson() {
    return ApiExceptionMapper.ensureInitialized().encodeJson<ApiException>(
      this as ApiException,
    );
  }

  Map<String, dynamic> toMap() {
    return ApiExceptionMapper.ensureInitialized().encodeMap<ApiException>(
      this as ApiException,
    );
  }

  ApiExceptionCopyWith<ApiException, ApiException, ApiException> get copyWith =>
      _ApiExceptionCopyWithImpl<ApiException, ApiException>(
        this as ApiException,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ApiExceptionMapper.ensureInitialized().stringifyValue(
      this as ApiException,
    );
  }

  @override
  bool operator ==(Object other) {
    return ApiExceptionMapper.ensureInitialized().equalsValue(
      this as ApiException,
      other,
    );
  }

  @override
  int get hashCode {
    return ApiExceptionMapper.ensureInitialized().hashValue(
      this as ApiException,
    );
  }
}

extension ApiExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApiException, $Out> {
  ApiExceptionCopyWith<$R, ApiException, $Out> get $asApiException =>
      $base.as((v, t, t2) => _ApiExceptionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApiExceptionCopyWith<$R, $In extends ApiException, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, bool? isUnknownException, int? statusCode});
  ApiExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiException, $Out>
    implements ApiExceptionCopyWith<$R, ApiException, $Out> {
  _ApiExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiException> $mapper =
      ApiExceptionMapper.ensureInitialized();
  @override
  $R call({
    String? message,
    bool? isUnknownException,
    Object? statusCode = $none,
  }) => $apply(
    FieldCopyWithData({
      if (message != null) #message: message,
      if (isUnknownException != null) #isUnknownException: isUnknownException,
      if (statusCode != $none) #statusCode: statusCode,
    }),
  );
  @override
  ApiException $make(CopyWithData data) => ApiException(
    message: data.get(#message, or: $value.message),
    isUnknownException: data.get(
      #isUnknownException,
      or: $value.isUnknownException,
    ),
    statusCode: data.get(#statusCode, or: $value.statusCode),
  );

  @override
  ApiExceptionCopyWith<$R2, ApiException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ApiExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SqlExceptionMapper extends ClassMapperBase<SqlException> {
  SqlExceptionMapper._();

  static SqlExceptionMapper? _instance;
  static SqlExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SqlExceptionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SqlException';

  static String _$message(SqlException v) => v.message;
  static const Field<SqlException, String> _f$message = Field(
    'message',
    _$message,
  );
  static bool _$isUnknownException(SqlException v) => v.isUnknownException;
  static const Field<SqlException, bool> _f$isUnknownException = Field(
    'isUnknownException',
    _$isUnknownException,
    opt: true,
    def: false,
  );
  static int? _$statusCode(SqlException v) => v.statusCode;
  static const Field<SqlException, int> _f$statusCode = Field(
    'statusCode',
    _$statusCode,
    opt: true,
  );

  @override
  final MappableFields<SqlException> fields = const {
    #message: _f$message,
    #isUnknownException: _f$isUnknownException,
    #statusCode: _f$statusCode,
  };

  static SqlException _instantiate(DecodingData data) {
    return SqlException(
      message: data.dec(_f$message),
      isUnknownException: data.dec(_f$isUnknownException),
      statusCode: data.dec(_f$statusCode),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SqlException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SqlException>(map);
  }

  static SqlException fromJson(String json) {
    return ensureInitialized().decodeJson<SqlException>(json);
  }
}

mixin SqlExceptionMappable {
  String toJson() {
    return SqlExceptionMapper.ensureInitialized().encodeJson<SqlException>(
      this as SqlException,
    );
  }

  Map<String, dynamic> toMap() {
    return SqlExceptionMapper.ensureInitialized().encodeMap<SqlException>(
      this as SqlException,
    );
  }

  SqlExceptionCopyWith<SqlException, SqlException, SqlException> get copyWith =>
      _SqlExceptionCopyWithImpl<SqlException, SqlException>(
        this as SqlException,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SqlExceptionMapper.ensureInitialized().stringifyValue(
      this as SqlException,
    );
  }

  @override
  bool operator ==(Object other) {
    return SqlExceptionMapper.ensureInitialized().equalsValue(
      this as SqlException,
      other,
    );
  }

  @override
  int get hashCode {
    return SqlExceptionMapper.ensureInitialized().hashValue(
      this as SqlException,
    );
  }
}

extension SqlExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SqlException, $Out> {
  SqlExceptionCopyWith<$R, SqlException, $Out> get $asSqlException =>
      $base.as((v, t, t2) => _SqlExceptionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SqlExceptionCopyWith<$R, $In extends SqlException, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, bool? isUnknownException, int? statusCode});
  SqlExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SqlExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SqlException, $Out>
    implements SqlExceptionCopyWith<$R, SqlException, $Out> {
  _SqlExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SqlException> $mapper =
      SqlExceptionMapper.ensureInitialized();
  @override
  $R call({
    String? message,
    bool? isUnknownException,
    Object? statusCode = $none,
  }) => $apply(
    FieldCopyWithData({
      if (message != null) #message: message,
      if (isUnknownException != null) #isUnknownException: isUnknownException,
      if (statusCode != $none) #statusCode: statusCode,
    }),
  );
  @override
  SqlException $make(CopyWithData data) => SqlException(
    message: data.get(#message, or: $value.message),
    isUnknownException: data.get(
      #isUnknownException,
      or: $value.isUnknownException,
    ),
    statusCode: data.get(#statusCode, or: $value.statusCode),
  );

  @override
  SqlExceptionCopyWith<$R2, SqlException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SqlExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CacheExceptionMapper extends ClassMapperBase<CacheException> {
  CacheExceptionMapper._();

  static CacheExceptionMapper? _instance;
  static CacheExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CacheExceptionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CacheException';

  static String _$message(CacheException v) => v.message;
  static const Field<CacheException, String> _f$message = Field(
    'message',
    _$message,
  );
  static int? _$statusCode(CacheException v) => v.statusCode;
  static const Field<CacheException, int> _f$statusCode = Field(
    'statusCode',
    _$statusCode,
    opt: true,
    def: 500,
  );

  @override
  final MappableFields<CacheException> fields = const {
    #message: _f$message,
    #statusCode: _f$statusCode,
  };

  static CacheException _instantiate(DecodingData data) {
    return CacheException(
      message: data.dec(_f$message),
      statusCode: data.dec(_f$statusCode),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CacheException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CacheException>(map);
  }

  static CacheException fromJson(String json) {
    return ensureInitialized().decodeJson<CacheException>(json);
  }
}

mixin CacheExceptionMappable {
  String toJson() {
    return CacheExceptionMapper.ensureInitialized().encodeJson<CacheException>(
      this as CacheException,
    );
  }

  Map<String, dynamic> toMap() {
    return CacheExceptionMapper.ensureInitialized().encodeMap<CacheException>(
      this as CacheException,
    );
  }

  CacheExceptionCopyWith<CacheException, CacheException, CacheException>
  get copyWith => _CacheExceptionCopyWithImpl<CacheException, CacheException>(
    this as CacheException,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return CacheExceptionMapper.ensureInitialized().stringifyValue(
      this as CacheException,
    );
  }

  @override
  bool operator ==(Object other) {
    return CacheExceptionMapper.ensureInitialized().equalsValue(
      this as CacheException,
      other,
    );
  }

  @override
  int get hashCode {
    return CacheExceptionMapper.ensureInitialized().hashValue(
      this as CacheException,
    );
  }
}

extension CacheExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CacheException, $Out> {
  CacheExceptionCopyWith<$R, CacheException, $Out> get $asCacheException =>
      $base.as((v, t, t2) => _CacheExceptionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CacheExceptionCopyWith<$R, $In extends CacheException, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, int? statusCode});
  CacheExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CacheExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CacheException, $Out>
    implements CacheExceptionCopyWith<$R, CacheException, $Out> {
  _CacheExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CacheException> $mapper =
      CacheExceptionMapper.ensureInitialized();
  @override
  $R call({String? message, Object? statusCode = $none}) => $apply(
    FieldCopyWithData({
      if (message != null) #message: message,
      if (statusCode != $none) #statusCode: statusCode,
    }),
  );
  @override
  CacheException $make(CopyWithData data) => CacheException(
    message: data.get(#message, or: $value.message),
    statusCode: data.get(#statusCode, or: $value.statusCode),
  );

  @override
  CacheExceptionCopyWith<$R2, CacheException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CacheExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LocalDbExceptionMapper extends ClassMapperBase<LocalDbException> {
  LocalDbExceptionMapper._();

  static LocalDbExceptionMapper? _instance;
  static LocalDbExceptionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocalDbExceptionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LocalDbException';

  static String _$message(LocalDbException v) => v.message;
  static const Field<LocalDbException, String> _f$message = Field(
    'message',
    _$message,
  );
  static int? _$statusCode(LocalDbException v) => v.statusCode;
  static const Field<LocalDbException, int> _f$statusCode = Field(
    'statusCode',
    _$statusCode,
    opt: true,
    def: 500,
  );

  @override
  final MappableFields<LocalDbException> fields = const {
    #message: _f$message,
    #statusCode: _f$statusCode,
  };

  static LocalDbException _instantiate(DecodingData data) {
    return LocalDbException(
      message: data.dec(_f$message),
      statusCode: data.dec(_f$statusCode),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LocalDbException fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocalDbException>(map);
  }

  static LocalDbException fromJson(String json) {
    return ensureInitialized().decodeJson<LocalDbException>(json);
  }
}

mixin LocalDbExceptionMappable {
  String toJson() {
    return LocalDbExceptionMapper.ensureInitialized()
        .encodeJson<LocalDbException>(this as LocalDbException);
  }

  Map<String, dynamic> toMap() {
    return LocalDbExceptionMapper.ensureInitialized()
        .encodeMap<LocalDbException>(this as LocalDbException);
  }

  LocalDbExceptionCopyWith<LocalDbException, LocalDbException, LocalDbException>
  get copyWith =>
      _LocalDbExceptionCopyWithImpl<LocalDbException, LocalDbException>(
        this as LocalDbException,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LocalDbExceptionMapper.ensureInitialized().stringifyValue(
      this as LocalDbException,
    );
  }

  @override
  bool operator ==(Object other) {
    return LocalDbExceptionMapper.ensureInitialized().equalsValue(
      this as LocalDbException,
      other,
    );
  }

  @override
  int get hashCode {
    return LocalDbExceptionMapper.ensureInitialized().hashValue(
      this as LocalDbException,
    );
  }
}

extension LocalDbExceptionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocalDbException, $Out> {
  LocalDbExceptionCopyWith<$R, LocalDbException, $Out>
  get $asLocalDbException =>
      $base.as((v, t, t2) => _LocalDbExceptionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LocalDbExceptionCopyWith<$R, $In extends LocalDbException, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, int? statusCode});
  LocalDbExceptionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _LocalDbExceptionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocalDbException, $Out>
    implements LocalDbExceptionCopyWith<$R, LocalDbException, $Out> {
  _LocalDbExceptionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocalDbException> $mapper =
      LocalDbExceptionMapper.ensureInitialized();
  @override
  $R call({String? message, Object? statusCode = $none}) => $apply(
    FieldCopyWithData({
      if (message != null) #message: message,
      if (statusCode != $none) #statusCode: statusCode,
    }),
  );
  @override
  LocalDbException $make(CopyWithData data) => LocalDbException(
    message: data.get(#message, or: $value.message),
    statusCode: data.get(#statusCode, or: $value.statusCode),
  );

  @override
  LocalDbExceptionCopyWith<$R2, LocalDbException, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LocalDbExceptionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

