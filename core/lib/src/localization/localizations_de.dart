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

  @override
  String get character => 'Charakter';

  @override
  String get settings => 'Einstellungen';

  @override
  String get favorites => 'Favoriten';

  @override
  String get noFavorites => 'Keine Favoriten';

  @override
  String get gender => 'Geschlecht';

  @override
  String get species => 'Rasse';

  @override
  String get type => 'Typ';

  @override
  String get origin => 'Herkunft';

  @override
  String get location => 'Aktuelle Position';

  @override
  String get created => 'Erstellt';

  @override
  String get episode => 'Episoden';

  @override
  String get themeModeSystem => 'System';

  @override
  String get themeModeLight => 'Hell';

  @override
  String get themeModeDark => 'Dunkel';

  @override
  String episodesValue(int count) {
    return '$count Episoden';
  }
}
