import 'package:core/src/constants/uri.dart';
import 'package:dio/dio.dart';

class HttpAdapter {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: kBaseUrl,
      connectTimeout: const Duration(seconds: 5),
    ),
  );

  Future<Response> get(String path, {Map<String, dynamic>? query}) async {
    try {
      return await _dio.get(path, queryParameters: query);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  String _handleError(DioException e) {
    return e.message ?? 'An unknown error occurred';
  }
}
