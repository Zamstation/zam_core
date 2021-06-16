import 'json.dart';

///
/// An interface to force implement serialization.
///
abstract class Serializable {
  Json toJson();
}
