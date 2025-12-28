import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageAdapter {
  Future<SharedPreferences> get _prefs async =>
      await SharedPreferences.getInstance();
  Future<bool> set(String key, dynamic value) async {
    final p = await _prefs;
    if (value is String) return await p.setString(key, value);
    if (value is int) return await p.setInt(key, value);
    if (value is bool) return await p.setBool(key, value);
    if (value is double) return await p.setDouble(key, value);
    if (value is List<String>) return await p.setStringList(key, value);

    throw Exception(
      'Type ${value.runtimeType} not supported by SharedPreferences',
    );
  }

  Future<void> setAll(Map<String, dynamic> values) async {
    for (final entry in values.entries) {
      await set(entry.key, entry.value);
    }
  }

  Future<dynamic> get(String key) async {
    final p = await _prefs;
    return p.get(key);
  }

  Future<Map<String, dynamic>> getAll() async {
    final p = await _prefs;
    final keys = p.getKeys();
    return {for (final key in keys) key: p.get(key)};
  }

  Future<bool> remove(String key) async {
    final p = await _prefs;
    return await p.remove(key);
  }

  Future<bool> clear() async {
    final p = await _prefs;
    return await p.clear();
  }
}
