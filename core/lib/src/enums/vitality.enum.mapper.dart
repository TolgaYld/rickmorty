// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vitality.enum.dart';

class VitalityMapper extends EnumMapper<Vitality> {
  VitalityMapper._();

  static VitalityMapper? _instance;
  static VitalityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VitalityMapper._());
    }
    return _instance!;
  }

  static Vitality fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Vitality decode(dynamic value) {
    switch (value) {
      case r'alive':
        return Vitality.alive;
      case r'dead':
        return Vitality.dead;
      case r'unknown':
        return Vitality.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Vitality self) {
    switch (self) {
      case Vitality.alive:
        return r'alive';
      case Vitality.dead:
        return r'dead';
      case Vitality.unknown:
        return r'unknown';
    }
  }
}

extension VitalityMapperExtension on Vitality {
  String toValue() {
    VitalityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Vitality>(this) as String;
  }
}

