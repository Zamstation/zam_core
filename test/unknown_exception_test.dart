import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart';

void main() {
  unknownExceptionTest();
}

void unknownExceptionTest() {
  group('UnknownException:', () {
    final exception = UnknownException(
        stackTrace: StackTrace.fromString('Some long stacktrace string.'));

    test('toString displays in the right format.', () {
      expect(exception.toString(),
          '''UnknownException has occured.\n> Problem: Something went wrong.\n> Solution: Please try again later.\n\nStackTrace:\nSome long stacktrace string.''');
    });
  });
}
