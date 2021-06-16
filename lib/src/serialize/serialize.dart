import 'json.dart';

///
/// Alias for function that converts a object in to an map.
///
typedef Serialize<T extends Object?> = Json Function(T item);
