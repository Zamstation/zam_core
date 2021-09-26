import '../object/identifiable.dart';
import 'basic.exception.dart';
import 'empty.exception.dart';
import 'exception_severity.enum.dart';

///
/// Wrapper around the built-in [Exception] class.
///
/// Provides more classified details of the exception like [severity].
///
/// Example:
///
///     final exception = NamedException.create('Provided value is -26 which is negative.');
///
/// or
///
///     final exception = NamedException.create(
///       'Provided value is -26 which is negative.'
///       solution: 'Please provide a positive value.'
///       severity: ExceptionSeverity.critical,
///     );
///
abstract class NamedException implements Exception, Identifiable<String> {
  ///
  /// An identifer for the exception.
  /// Default to the class's [runtimeType].
  ///
  @override
  String get key => runtimeType.toString();

  ///
  /// A more user readable exception name than the [key].
  /// Default to [key] unless otherwise specified.
  ///
  String get name => key;

  ///
  /// [category] is either the super class or this class.
  ///
  Type get category => runtimeType;

  ///
  /// Problem statement of the [Exception].
  ///
  /// Example:
  ///
  ///     problem => 'Provided value is -26 which is negative.'
  ///
  String get problem;

  ///
  /// Solution statement of the [Exception].
  ///
  /// Example:
  ///
  ///     solution => 'Please provide a positive value.'
  ///
  String get solution;

  ///
  /// Severity can be none, warning or critical.
  ///
  ExceptionSeverity get severity;

  ///
  /// Complete description of the [Exception].
  ///
  /// Mostly built using [name], [problem] and [solution].
  ///
  String get text =>
      '$name has occured.\n> Problem: $problem\n> Solution: $solution';

  ///
  /// Empty default constructor for sub classes.
  ///
  const NamedException();

  ///
  /// Example:
  ///
  ///     final exception = NamedException.create('Provided value is -26 which is negative.');
  ///
  /// or
  ///
  ///     final exception = NamedException.create(
  ///       'Provided value is -26 which is negative.'
  ///       solution: 'Please provide a positive value.'
  ///       severity: ExceptionSeverity.critical,
  ///     );
  ///
  factory NamedException.create(
    String problem, {
    String name = 'UnnamedException',
    String solution = '<none>',
    ExceptionSeverity severity = ExceptionSeverity.none,
  }) =>
      BasicException(
        problem,
        name: name,
        solution: solution,
        severity: severity,
      );

  ///
  /// Example:
  ///
  ///     final exception = NamedException.empty();
  ///
  /// or
  ///
  ///     final exception = EmptyException();
  ///
  factory NamedException.empty() => EmptyException();

  ///
  /// [toString] function returns the exception's [text]
  ///
  @override
  String toString() {
    return text;
  }
}
