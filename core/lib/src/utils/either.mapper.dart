// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'either.dart';

class EitherMapper extends ClassMapperBase<Either> {
  EitherMapper._();

  static EitherMapper? _instance;
  static EitherMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EitherMapper._());
      LeftMapper.ensureInitialized();
      RightMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Either';
  @override
  Function get typeFactory =>
      <L, R>(f) => f<Either<L, R>>();

  @override
  final MappableFields<Either> fields = const {};

  static Either<L, R> _instantiate<L, R>(DecodingData data) {
    throw MapperException.missingConstructor('Either');
  }

  @override
  final Function instantiate = _instantiate;

  static Either<L, R> fromMap<L, R>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Either<L, R>>(map);
  }

  static Either<L, R> fromJson<L, R>(String json) {
    return ensureInitialized().decodeJson<Either<L, R>>(json);
  }
}

mixin EitherMappable<L, R> {
  String toJson();
  Map<String, dynamic> toMap();
  EitherCopyWith<Either<L, R>, Either<L, R>, Either<L, R>, L, R> get copyWith;
}

abstract class EitherCopyWith<$R, $In extends Either<L, R>, $Out, L, R>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  EitherCopyWith<$R2, $In, $Out2, L, R> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class LeftMapper extends ClassMapperBase<Left> {
  LeftMapper._();

  static LeftMapper? _instance;
  static LeftMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LeftMapper._());
      EitherMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Left';
  @override
  Function get typeFactory =>
      <L, R>(f) => f<Left<L, R>>();

  static dynamic _$failure(Left v) => v.failure;
  static dynamic _arg$failure<L, R>(f) => f<L>();
  static const Field<Left, dynamic> _f$failure = Field(
    'failure',
    _$failure,
    arg: _arg$failure,
  );

  @override
  final MappableFields<Left> fields = const {#failure: _f$failure};

  static Left<L, R> _instantiate<L, R>(DecodingData data) {
    return Left(data.dec(_f$failure));
  }

  @override
  final Function instantiate = _instantiate;

  static Left<L, R> fromMap<L, R>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Left<L, R>>(map);
  }

  static Left<L, R> fromJson<L, R>(String json) {
    return ensureInitialized().decodeJson<Left<L, R>>(json);
  }
}

mixin LeftMappable<L, R> {
  String toJson() {
    return LeftMapper.ensureInitialized().encodeJson<Left<L, R>>(
      this as Left<L, R>,
    );
  }

  Map<String, dynamic> toMap() {
    return LeftMapper.ensureInitialized().encodeMap<Left<L, R>>(
      this as Left<L, R>,
    );
  }

  LeftCopyWith<Left<L, R>, Left<L, R>, Left<L, R>, L, R> get copyWith =>
      _LeftCopyWithImpl<Left<L, R>, Left<L, R>, L, R>(
        this as Left<L, R>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LeftMapper.ensureInitialized().stringifyValue(this as Left<L, R>);
  }

  @override
  bool operator ==(Object other) {
    return LeftMapper.ensureInitialized().equalsValue(
      this as Left<L, R>,
      other,
    );
  }

  @override
  int get hashCode {
    return LeftMapper.ensureInitialized().hashValue(this as Left<L, R>);
  }
}

extension LeftValueCopy<$R, $Out, L, R>
    on ObjectCopyWith<$R, Left<L, R>, $Out> {
  LeftCopyWith<$R, Left<L, R>, $Out, L, R> get $asLeft =>
      $base.as((v, t, t2) => _LeftCopyWithImpl<$R, $Out, L, R>(v, t, t2));
}

abstract class LeftCopyWith<$R, $In extends Left<L, R>, $Out, L, R>
    implements EitherCopyWith<$R, $In, $Out, L, R> {
  @override
  $R call({L? failure});
  LeftCopyWith<$R2, $In, $Out2, L, R> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LeftCopyWithImpl<$R, $Out, L, R>
    extends ClassCopyWithBase<$R, Left<L, R>, $Out>
    implements LeftCopyWith<$R, Left<L, R>, $Out, L, R> {
  _LeftCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Left> $mapper = LeftMapper.ensureInitialized();
  @override
  $R call({Object? failure = $none}) =>
      $apply(FieldCopyWithData({if (failure != $none) #failure: failure}));
  @override
  Left<L, R> $make(CopyWithData data) =>
      Left(data.get(#failure, or: $value.failure));

  @override
  LeftCopyWith<$R2, Left<L, R>, $Out2, L, R> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LeftCopyWithImpl<$R2, $Out2, L, R>($value, $cast, t);
}

class RightMapper extends ClassMapperBase<Right> {
  RightMapper._();

  static RightMapper? _instance;
  static RightMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RightMapper._());
      EitherMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Right';
  @override
  Function get typeFactory =>
      <L, R>(f) => f<Right<L, R>>();

  static dynamic _$value(Right v) => v.value;
  static dynamic _arg$value<L, R>(f) => f<R>();
  static const Field<Right, dynamic> _f$value = Field(
    'value',
    _$value,
    arg: _arg$value,
  );

  @override
  final MappableFields<Right> fields = const {#value: _f$value};

  static Right<L, R> _instantiate<L, R>(DecodingData data) {
    return Right(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static Right<L, R> fromMap<L, R>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Right<L, R>>(map);
  }

  static Right<L, R> fromJson<L, R>(String json) {
    return ensureInitialized().decodeJson<Right<L, R>>(json);
  }
}

mixin RightMappable<L, R> {
  String toJson() {
    return RightMapper.ensureInitialized().encodeJson<Right<L, R>>(
      this as Right<L, R>,
    );
  }

  Map<String, dynamic> toMap() {
    return RightMapper.ensureInitialized().encodeMap<Right<L, R>>(
      this as Right<L, R>,
    );
  }

  RightCopyWith<Right<L, R>, Right<L, R>, Right<L, R>, L, R> get copyWith =>
      _RightCopyWithImpl<Right<L, R>, Right<L, R>, L, R>(
        this as Right<L, R>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return RightMapper.ensureInitialized().stringifyValue(this as Right<L, R>);
  }

  @override
  bool operator ==(Object other) {
    return RightMapper.ensureInitialized().equalsValue(
      this as Right<L, R>,
      other,
    );
  }

  @override
  int get hashCode {
    return RightMapper.ensureInitialized().hashValue(this as Right<L, R>);
  }
}

extension RightValueCopy<$R, $Out, L, R>
    on ObjectCopyWith<$R, Right<L, R>, $Out> {
  RightCopyWith<$R, Right<L, R>, $Out, L, R> get $asRight =>
      $base.as((v, t, t2) => _RightCopyWithImpl<$R, $Out, L, R>(v, t, t2));
}

abstract class RightCopyWith<$R, $In extends Right<L, R>, $Out, L, R>
    implements EitherCopyWith<$R, $In, $Out, L, R> {
  @override
  $R call({R? value});
  RightCopyWith<$R2, $In, $Out2, L, R> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RightCopyWithImpl<$R, $Out, L, R>
    extends ClassCopyWithBase<$R, Right<L, R>, $Out>
    implements RightCopyWith<$R, Right<L, R>, $Out, L, R> {
  _RightCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Right> $mapper = RightMapper.ensureInitialized();
  @override
  $R call({Object? value = $none}) =>
      $apply(FieldCopyWithData({if (value != $none) #value: value}));
  @override
  Right<L, R> $make(CopyWithData data) =>
      Right(data.get(#value, or: $value.value));

  @override
  RightCopyWith<$R2, Right<L, R>, $Out2, L, R> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RightCopyWithImpl<$R2, $Out2, L, R>($value, $cast, t);
}

