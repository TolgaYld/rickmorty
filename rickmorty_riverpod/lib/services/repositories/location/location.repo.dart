import 'package:core/rickmorty_core.dart';

abstract interface class LocationRepository {
  ResultFuture<List<Location>> getLocations();
  ResultFuture<Location?> getLocationById(int id);
}
