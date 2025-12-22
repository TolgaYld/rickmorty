import 'package:core/src/localization/localizations.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'gender.enum.mapper.dart';

@MappableEnum()
enum Gender {
  male(
    color: Colors.blue,
    icon: Icons.male,
  ),
  female(
    color: Colors.pink,
    icon: Icons.female,
  ),
  genderless(
    color: Colors.grey,
    icon: Icons.transgender,
  ),
  unknown(
    color: Colors.yellow,
    icon: Icons.question_mark,
  )
  ;

  const Gender({
    required this.color,
    required this.icon,
  });

  final Color color;
  final IconData icon;

  String getLocalizedName(L10n l10n) => switch (this) {
    Gender.male => l10n.male,
    Gender.female => l10n.female,
    Gender.genderless => l10n.genderless,
    Gender.unknown => l10n.unknown,
  };
}
