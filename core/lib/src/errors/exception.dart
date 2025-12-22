import 'package:dart_mappable/dart_mappable.dart';

part 'exception.mapper.dart';

@MappableClass()
class ApiException with ApiExceptionMappable implements Exception {
  ApiException({
    required this.message,
    this.isUnknownException = false,
    this.statusCode,
  });

  final String message;
  final bool isUnknownException;
  final int? statusCode;
}

@MappableClass()
class SqlException with SqlExceptionMappable implements Exception {
  SqlException({
    required this.message,
    this.isUnknownException = false,
    this.statusCode,
  });

  final String message;
  final bool isUnknownException;
  final int? statusCode;
}

@MappableClass()
class CacheException with CacheExceptionMappable implements Exception {
  CacheException({
    required this.message,
    this.statusCode = 500,
  });

  final String message;
  final int? statusCode;
}

@MappableClass()
class LocalDbException with LocalDbExceptionMappable implements Exception {
  LocalDbException({
    required this.message,
    this.statusCode = 500,
  });

  final String message;
  final int? statusCode;
}
