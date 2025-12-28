import 'package:core/src/enums/gender.enum.dart';
import 'package:core/src/enums/species.enum.dart';
import 'package:core/src/enums/vitality.enum.dart';
import 'package:core/src/interfaces/id_holder.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'character.model.mapper.dart';

@MappableClass()
class CharacterLocation with CharacterLocationMappable {
  const CharacterLocation({required this.name, required this.url});
  final String name;
  final String url;
}

@MappableClass()
class Character with CharacterMappable implements IdHolder {
  const Character({
    required this.id,
    required this.name,
    required this.vitality,
    required this.gender,
    required this.species,
    required this.type,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  final int id;
  final String name;

  @MappableField(key: 'status')
  final Vitality vitality;

  final Gender gender;
  final Species species;
  final String type;
  final CharacterLocation origin;
  final CharacterLocation location;
  final String image;
  final List<String> episode;
  final String url;
  final DateTime created;
}
