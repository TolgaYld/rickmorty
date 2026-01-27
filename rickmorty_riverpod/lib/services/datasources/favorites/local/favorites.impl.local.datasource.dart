import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/storage/local_storage_adapter.dart';
import 'package:rickmorty_riverpod/services/datasources/favorites/local/favorites.local.datasource.dart';

final favoritesDatasourceProvider =
    Provider.autoDispose<FavoritesLocalDatasource>(
      (ref) =>
          FavoritesLocalDatasourceImpl(ref.watch(localStorageAdapterProvider)),
    );

class FavoritesLocalDatasourceImpl implements FavoritesLocalDatasource {
  FavoritesLocalDatasourceImpl(this._storage);

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
