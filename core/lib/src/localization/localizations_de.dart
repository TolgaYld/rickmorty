// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class L10nDe extends L10n {
  L10nDe([String locale = 'de']) : super(locale);

  @override
  String get language => 'Deutsch';

  @override
  String get male => 'Männlich';

  @override
  String get female => 'Weiblich';

  @override
  String get genderless => 'Kein Geschlecht';

  @override
  String get unknown => 'Unbekannt';

  @override
  String get statusAlive => 'Lebendig';

  @override
  String get statusDead => 'Tot';

  @override
  String get statusUnknown => 'Unbekannt';

  @override
  String get speciesHuman => 'Mensch';

  @override
  String get speciesAlien => 'Alien';

  @override
  String get speciesHumanoid => 'Menschoid';

  @override
  String get speciesRobot => 'Robot';

  @override
  String get speciesOther => 'Andere';
}
