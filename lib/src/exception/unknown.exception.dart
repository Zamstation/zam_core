import 'exception_severity.enum.dart';
import 'named.exception.dart';

///
/// Exceptions that are not expected but handled
/// in the else part and sent to the user interface.
///
/// User interface must globally listen to this exception
/// and show an error message to the user.
///
class UnknownException extends NamedException {
  @override
  String get problem => 'Something went wrong.';

  @override
  String get solution => 'Please try again later.';

  @override
  ExceptionSeverity get severity => ExceptionSeverity.fatal;

  @override
  String get text => '${super.text}\n\nStackTrace:\n$stackTrace';

  final StackTrace stackTrace;

  const UnknownException({
    this.stackTrace = StackTrace.empty,
  });
}
