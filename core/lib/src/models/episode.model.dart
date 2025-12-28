import 'package:core/src/interfaces/id_holder.dart';
import 'package:core/src/models/hooks/air_date.hook.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'episode.model.mapper.dart';

@MappableClass()
class Episode with EpisodeMappable implements IdHolder {
  const Episode({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  @MappableField(key: 'air_date', hook: AirDateHook())
  final DateTime airDate;

  final int id;
  final String name;
  final String episode;
  final List<String> characters;
  final String url;
  final DateTime created;
}
