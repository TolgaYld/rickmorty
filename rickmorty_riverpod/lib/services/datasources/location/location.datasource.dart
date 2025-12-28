import 'package:core/rickmorty_core.dart';

abstract interface class LocationDatasource {
  Future<List<Location>> getLocations();
  Future<Location?> getLocationById(int id);
}
