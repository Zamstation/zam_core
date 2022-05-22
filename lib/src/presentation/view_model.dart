import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

///
/// Contains data that could be bound to the views
/// in user interface.
///
@immutable
abstract class ViewModel with EquatableMixin {
  @override
  get stringify => true;

  const ViewModel();
}
