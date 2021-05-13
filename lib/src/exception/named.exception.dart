import '../object/identifiable.dart';
import 'exception_severity.enum.dart';

abstract class NamedException implements Exception, Identifiable {
  String get name;
  Type get category;
  String get problem;
  String get solution;
  ExceptionSeverity get severity;
  String get text;
}
