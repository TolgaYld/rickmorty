import 'package:core/rickmorty_core.dart';
import 'package:get_it/get_it.dart';
import 'package:rickmorty_bloc/features/character/application/bloc/character_bloc.dart';
import 'package:rickmorty_bloc/features/character/data/datasources/remote/character.remote.datasource.dart';
import 'package:rickmorty_bloc/features/character/data/repository/character.impl.repo.dart';
import 'package:rickmorty_bloc/features/character/domain/repository/character.repo.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_bloc.dart';
import 'package:rickmorty_bloc/features/favorites/data/datasources/local/favorites.local.datasource.dart';
import 'package:rickmorty_bloc/features/favorites/data/repository/favorites.impl.repo.dart';
import 'package:rickmorty_bloc/features/favorites/domain/repository/favorites.repo.dart';
import 'package:rickmorty_bloc/features/settings/application/cubit/settings_cubit.dart';
import 'package:rickmorty_bloc/features/settings/data/datasources/local/settings.local.datasource.dart';
import 'package:rickmorty_bloc/features/settings/data/repository/settings.impl.repo.dart';
import 'package:rickmorty_bloc/features/settings/domain/repository/settings.repo.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  // External
  sl.registerLazySingleton<HttpAdapter>(HttpAdapter.new);
  sl.registerLazySingleton<LocalStorageAdapter>(LocalStorageAdapter.new);

  // Datasources
  sl.registerLazySingleton<CharacterDatasource>(
    () => CharacterDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<FavoritesDatasource>(
    () => FavoritesDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<SettingsDatasource>(
    () => SettingsDatasourceImpl(sl()),
  );

  // Repositories
  sl.registerLazySingleton<CharacterRepository>(
    () => CharacterRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(sl()),
  );

  // Blocs
  sl.registerFactory<CharacterBloc>(
    () => CharacterBloc(sl()),
  );
  sl.registerFactory<FavoritesBloc>(
    () => FavoritesBloc(sl()),
  );
  sl.registerFactory<SettingsCubit>(
    () => SettingsCubit(sl()),
  );
}
