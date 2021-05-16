import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart';

void main() {
  testEmptyException();
}

void testEmptyException() {
  group('EmptyException:', () {
    final exception = EmptyException();

    test('Text is built successfully by the super class', () {
      expect(exception.text,
          'EmptyException has occured.\n> Problem: Empty Exception Occured.\n> Solution: This exception should not occur. Needs to be handled.');
    });
  });
}
