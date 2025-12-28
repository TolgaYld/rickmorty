import 'package:core/rickmorty_core.dart';

abstract interface class FavoritesDatasource {
  Future<List<Character>> getFavorites();
  Future<void> saveFavorites(List<Character> characters);
}

class FavoritesDatasourceImpl implements FavoritesDatasource {
  FavoritesDatasourceImpl(this._storage);

  final LocalStorageAdapter _storage;

  @override
  Future<List<Character>> getFavorites() async {
    try {
      final result = await _storage.get(StorageKeys.favorites);
      if (result is List) {
        return result
            .map((e) {
              if (e is String) {
                return CharacterMapper.fromJson(e);
              }
              return null;
            })
            .whereType<Character>()
            .toList();
      }
      return [];
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> saveFavorites(List<Character> characters) async {
    try {
      final jsonList = characters.map((e) => e.toJson()).toList();
      await _storage.set(StorageKeys.favorites, jsonList);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
