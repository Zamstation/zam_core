import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

///
/// Contains data that could be bound to the views
/// in user interface.
///
@immutable
abstract class ViewModel with EquatableMixin {
  const ViewModel();
}
