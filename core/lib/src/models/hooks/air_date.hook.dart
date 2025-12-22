import 'package:dart_mappable/dart_mappable.dart';
import 'package:intl/intl.dart';

class AirDateHook extends MappingHook {
  const AirDateHook();

  @override
  Object? beforeDecode(Object? value) {
    if (value is String) {
      return DateFormat("MMMM d, yyyy", 'en_US').parse(value);
    }
    return value;
  }

  @override
  Object? afterEncode(Object? value) {
    if (value is DateTime) {
      return DateFormat("MMMM d, yyyy", 'en_US').format(value);
    }
    return value;
  }
}
