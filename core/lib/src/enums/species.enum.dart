import 'package:core/src/localization/localizations.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'species.enum.mapper.dart';

@MappableEnum(defaultValue: Species.other)
enum Species {
  human(icon: Icons.person),
  alien(icon: Icons.reddit),
  humanoid(icon: Icons.accessibility_new),
  robot(icon: Icons.smart_toy),
  other(icon: Icons.question_mark)
  ;

  const Species({required this.icon});
  final IconData icon;

  String getLocalizedName(L10n l10n) => switch (this) {
    Species.human => l10n.speciesHuman,
    Species.alien => l10n.speciesAlien,
    Species.humanoid => l10n.speciesHumanoid,
    Species.robot => l10n.speciesRobot,
    Species.other => l10n.speciesOther,
  };
}
