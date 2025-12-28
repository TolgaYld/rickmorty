import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/network/http_adapter.dart';
import 'package:rickmorty_riverpod/services/datasources/location/location.datasource.dart';

final locationDatasourceProvider = Provider.autoDispose<LocationDatasource>(
  (ref) => LocationDatasourceImpl(ref.watch(httpAdapterProvider)),
);

class LocationDatasourceImpl implements LocationDatasource {
  LocationDatasourceImpl(this._httpAdapter);

  final HttpAdapter _httpAdapter;
  @override
  Future<List<Location>> getLocations() async {
    try {
      final response = await _httpAdapter.get(Endpoints.locations);
      if (response.statusCode != 200) {
        throw ApiException(
          message: response.data['error'] ?? 'Unknown Error',
          statusCode: response.statusCode,
        );
      }
      final List<dynamic> data = response.data['results'];

      return [for (final element in data) LocationMapper.fromMap(element)];
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<Location?> getLocationById(int id) async {
    try {
      final response = await _httpAdapter.get('${Endpoints.locations}/$id');
      if (response.statusCode != 200) {
        throw ApiException(
          message: response.data['error'] ?? 'Unknown Error',
          statusCode: response.statusCode,
        );
      }
      final Map<String, dynamic> data = response.data['results'];

      return LocationMapper.fromMap(data);
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString(), statusCode: 500);
    }
  }
}
