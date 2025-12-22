import 'package:core/src/errors/exception.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'failure.mapper.dart';

@MappableClass()
sealed class Failure with FailureMappable {
  Failure({required this.message, this.isUnknownException = false});

  final String message;
  final bool isUnknownException;
}

@MappableClass()
class ApiFailure extends Failure with ApiFailureMappable {
  ApiFailure({
    required super.message,
  });

  ApiFailure.fromException(ApiException exception)
    : super(
        message: exception.message,
        isUnknownException: exception.isUnknownException,
      );
}

@MappableClass()
class SqlFailure extends Failure with SqlFailureMappable {
  SqlFailure({required super.message});

  SqlFailure.fromException(SqlException exception)
    : super(
        message: exception.message,
        isUnknownException: exception.isUnknownException,
      );
}

@MappableClass()
class CacheFailure extends Failure with CacheFailureMappable {
  CacheFailure({required super.message});

  CacheFailure.fromException(CacheException exception)
    : super(message: exception.message);
}

@MappableClass()
class LocalDbFailure extends Failure with LocalDbFailureMappable {
  LocalDbFailure({required super.message});

  LocalDbFailure.fromException(LocalDbException exception)
    : super(message: exception.message);
}
