import 'exception_severity.enum.dart';
import 'named.exception.dart';

///
/// A basic implementation of [NamedException].
/// [key] and [name] default to the class's runtimeType.
/// [text] is built from [problem] and [solution].
/// [toString] is built from [name], [problem] and [solution].
///
///
/// Must override [category], [problem] and [solution].
///
class BasicException implements NamedException {
  @override
  String get key => this.runtimeType.toString();

  @override
  String get name => key;

  @override
  Type get category => this.runtimeType;

  @override
  String get problem => 'This is a generic $name.';

  @override
  String get solution => 'Please throw a specific exception.';

  ///
  /// Defaults to no severity.
  ///
  @override
  final severity = ExceptionSeverity.none;

  @override
  String get text => '$name has occured.\n> Problem: $problem\n> Solution: $solution';

  const BasicException();

  @override
  String toString() => text;
}
