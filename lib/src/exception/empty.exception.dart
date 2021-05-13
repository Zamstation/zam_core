import 'basic.exception.dart';

class EmptyException extends BasicException {
  final Type category = EmptyException;
  final String problem = 'Empty Exception Occured.';
  final String solution =
      'This exception should not occur. Needs to be handled.';

  const EmptyException();
}
