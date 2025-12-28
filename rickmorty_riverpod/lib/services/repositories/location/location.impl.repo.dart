import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/datasources/location/location.datasource.dart';
import 'package:rickmorty_riverpod/services/datasources/location/location.impl.datasource.dart';
import 'package:rickmorty_riverpod/services/repositories/location/location.repo.dart';

final locationRepositoryProvider = Provider.autoDispose<LocationRepository>(
  (ref) => LocationRepositoryImpl(ref.watch(locationDatasourceProvider)),
);

class LocationRepositoryImpl implements LocationRepository {
  LocationRepositoryImpl(this._datasource);
  final LocationDatasource _datasource;
  @override
  ResultFuture<Location?> getLocationById(int id) async {
    try {
      final result = await _datasource.getLocationById(id);
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<List<Location>> getLocations() async {
    try {
      final result = await _datasource.getLocations();
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }
}
