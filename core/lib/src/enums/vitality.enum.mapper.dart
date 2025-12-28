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
      case r'Alive':
        return Vitality.alive;
      case r'Dead':
        return Vitality.dead;
      case 'unknown':
        return Vitality.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Vitality self) {
    switch (self) {
      case Vitality.alive:
        return r'Alive';
      case Vitality.dead:
        return r'Dead';
      case Vitality.unknown:
        return 'unknown';
    }
  }
}

extension VitalityMapperExtension on Vitality {
  dynamic toValue() {
    VitalityMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Vitality>(this);
  }
}

