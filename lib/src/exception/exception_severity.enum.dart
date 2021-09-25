///
/// [ExceptionSeverity] is an enum with the following values.
///
/// - none -> if you don't want to set any severity.
/// - warning -> exception that require minor fixes.
/// - critical -> exception that require taking alternate paths.
/// - fatal -> exceptions that cannot be fixed.
///
enum ExceptionSeverity {
  none,
  warning,
  critical,
  fatal,
}
