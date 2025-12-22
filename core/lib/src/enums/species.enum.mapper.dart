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
      case r'human':
        return Species.human;
      case r'alien':
        return Species.alien;
      case r'humanoid':
        return Species.humanoid;
      case r'robot':
        return Species.robot;
      case r'other':
        return Species.other;
      default:
        return Species.values[4];
    }
  }

  @override
  dynamic encode(Species self) {
    switch (self) {
      case Species.human:
        return r'human';
      case Species.alien:
        return r'alien';
      case Species.humanoid:
        return r'humanoid';
      case Species.robot:
        return r'robot';
      case Species.other:
        return r'other';
    }
  }
}

extension SpeciesMapperExtension on Species {
  String toValue() {
    SpeciesMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Species>(this) as String;
  }
}

