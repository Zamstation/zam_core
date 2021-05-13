import 'exception_severity.enum.dart';
import 'named.exception.dart';

abstract class BasicException implements NamedException {
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
  @override
  final severity = ExceptionSeverity.warning;
  @override
  String get text => '''$problem
$solution''';

  const BasicException();

  @override
  String toString() => '''$name has occured.
> Problem: $problem
> Solution: $solution''';
}
