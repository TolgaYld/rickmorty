import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final httpAdapterProvider = Provider.autoDispose<HttpAdapter>(
  (ref) => HttpAdapter(),
);
