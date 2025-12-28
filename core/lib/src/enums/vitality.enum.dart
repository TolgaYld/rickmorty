import 'package:core/src/localization/localizations.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'vitality.enum.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.pascalCase)
enum Vitality {
  alive(
    color: Colors.green,
    icon: Icons.check_circle,
  ),
  dead(
    color: Colors.red,
    icon: Icons.error,
  ),
  @MappableValue('unknown')
  unknown(
    color: Colors.grey,
    icon: Icons.help_outline,
  )
  ;

  const Vitality({
    required this.color,
    required this.icon,
  });

  final Color color;
  final IconData icon;

  String getLocalizedName(L10n l10n) => switch (this) {
    Vitality.alive => l10n.statusAlive,
    Vitality.dead => l10n.statusDead,
    Vitality.unknown => l10n.statusUnknown,
  };
}
