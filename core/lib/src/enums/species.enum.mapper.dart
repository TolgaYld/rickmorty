// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'species.enum.dart';

class SpeciesMapper extends EnumMapper<Species> {
  SpeciesMapper._();

  static SpeciesMapper? _instance;
  static SpeciesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SpeciesMapper._());
    }
    return _instance!;
  }

  static Species fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Species decode(dynamic value) {
    switch (value) {
      case r'Human':
        return Species.human;
      case r'Alien':
        return Species.alien;
      case r'Humanoid':
        return Species.humanoid;
      case r'Robot':
        return Species.robot;
      case r'Other':
        return Species.other;
      default:
        return Species.values[4];
    }
  }

  @override
  dynamic encode(Species self) {
    switch (self) {
      case Species.human:
        return r'Human';
      case Species.alien:
        return r'Alien';
      case Species.humanoid:
        return r'Humanoid';
      case Species.robot:
        return r'Robot';
      case Species.other:
        return r'Other';
    }
  }
}

extension SpeciesMapperExtension on Species {
  String toValue() {
    SpeciesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Species>(this) as String;
  }
}

