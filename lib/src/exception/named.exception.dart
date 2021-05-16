import '../object/identifiable.dart';
import 'exception_severity.enum.dart';

///
/// Wrapper around the built-in [Exception] class.
///
/// Provides better classified details of the exception.
///
abstract class NamedException implements Exception, Identifiable<String> {
  ///
  /// The [name] is mostly the [runtimeType] of this class.
  ///
  String get name;

  ///
  /// [category] is either the super class or this class.
  ///
  Type get category;

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
  /// [text] can be built by concatenating [problem] and [solution].
  ///
  /// Also try to override [toString].
  ///
  /// Check out [BasicException] for ideas.
  ///
  String get text;
}
