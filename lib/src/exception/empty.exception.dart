import 'exception_severity.enum.dart';
import 'named.exception.dart';

///
/// A simple empty exception that can be created on the fly.
///
class EmptyException extends NamedException {
  final String problem = '<none>';

  final String solution = '<none>';

  final ExceptionSeverity severity = ExceptionSeverity.none;

  ///
  /// Example:
  ///
  ///     final exception = EmptyException();
  ///
  /// or
  ///
  ///     final exception = NamedException.empty();
  ///
  const EmptyException();
}
