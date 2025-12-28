import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/repositories/location/location.impl.repo.dart';

final locationProvider = FutureProvider.autoDispose<List<Location>>((
  ref,
) async {
  final repository = ref.watch(locationRepositoryProvider);
  final result = await repository.getLocations();
  return result.fold((failure) => throw failure, (success) => success);
});

final locationByIdProvider = FutureProvider.autoDispose.family<Location?, int>((
  ref,
  id,
) async {
  final repository = ref.watch(locationRepositoryProvider);
  final result = await repository.getLocationById(id);
  return switch (result) {
    Left(:final failure) => throw failure,
    Right(:final value) => value,
  };
});
