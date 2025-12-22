import 'package:dart_mappable/dart_mappable.dart';

part 'either.mapper.dart';

@MappableClass()
sealed class Either<L, R> with EitherMappable<L, R> {
  const Either();

  T fold<T>(T Function(L left) leftFn, T Function(R right) rightFn) {
    if (this is Left<L, R>) {
      return leftFn((this as Left<L, R>).failure);
    } else {
      return rightFn((this as Right<L, R>).value);
    }
  }
}

@MappableClass()
class Left<L, R> extends Either<L, R> with LeftMappable<L, R> {
  const Left(this.failure);
  final L failure;
}

@MappableClass()
class Right<L, R> extends Either<L, R> with RightMappable<L, R> {
  const Right(this.value);
  final R value;
}
