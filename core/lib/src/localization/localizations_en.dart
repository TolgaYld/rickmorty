// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'Deutsch';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get genderless => 'Genderless';

  @override
  String get unknown => 'Unknown';

  @override
  String get statusAlive => 'Alive';

  @override
  String get statusDead => 'Dead';

  @override
  String get statusUnknown => 'Unknown';

  @override
  String get speciesHuman => 'Human';

  @override
  String get speciesAlien => 'Alien';

  @override
  String get speciesHumanoid => 'Humanoid';

  @override
  String get speciesRobot => 'Robot';

  @override
  String get speciesOther => 'Other';

  @override
  String get character => 'Character';

  @override
  String get settings => 'Settings';

  @override
  String get favorites => 'Favorites';

  @override
  String get noFavorites => 'No Favorites';

  @override
  String get gender => 'Gender';

  @override
  String get species => 'Species';

  @override
  String get type => 'Type';

  @override
  String get origin => 'Origin';

  @override
  String get location => 'Location';

  @override
  String get created => 'Created';

  @override
  String get episode => 'Episode';

  @override
  String get themeModeSystem => 'System';

  @override
  String get themeModeLight => 'Light';

  @override
  String get themeModeDark => 'Dark';

  @override
  String episodesValue(int count) {
    return '$count Episodes';
  }
}
