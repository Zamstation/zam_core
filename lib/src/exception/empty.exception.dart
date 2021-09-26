import 'exception_severity.enum.dart';
import 'named.exception.dart';

///
/// A simple empty exception that can be created on the fly.
///
class EmptyException extends NamedException {
  @override
  final String problem = '<none>';

  @override
  final String solution = '<none>';

  @override
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
