import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final localStorageAdapterProvider = Provider.autoDispose<LocalStorageAdapter>(
  (ref) => LocalStorageAdapter(),
);
