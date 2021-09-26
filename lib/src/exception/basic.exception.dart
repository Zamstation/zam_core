import 'exception_severity.enum.dart';
import 'named.exception.dart';

///
/// Exception that can be created on the fly.
///
class BasicException extends NamedException {
  @override
  final String key;

  @override
  final String problem;

  @override
  final String solution;

  @override
  final ExceptionSeverity severity;

  ///
  /// Example:
  ///
  ///     final exception = BasicException('Provided value is -26 which is negative.');
  /// or
  ///
  ///     final exception = BasicException(
  ///       'Provided value is -26 which is negative.'
  ///       solution: 'Please provide a positive value.'
  ///       severity: ExceptionSeverity.critical,
  ///     );
  ///
  const BasicException(
    this.problem, {
    String name = 'UnnamedException',
    this.solution = '<none>',
    this.severity = ExceptionSeverity.none,
  }) : key = name;
}
