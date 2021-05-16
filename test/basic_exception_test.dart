import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart';

void main() {
  testBasicException();
}

void testBasicException() {
  group('BasicException:', () {
    final exception = BasicException();

    test('Defaults are set successfully.', () {
      expect(exception.key, 'BasicException');
      expect(exception.name, 'BasicException');
      expect(exception.category, BasicException);
      expect(exception.problem, 'This is a generic BasicException.');
      expect(exception.solution, 'Please throw a specific exception.');
      expect(exception.text,
          '''BasicException has occured.\n> Problem: This is a generic BasicException.\n> Solution: Please throw a specific exception.''');
      expect(exception.toString(),
          '''BasicException has occured.\n> Problem: This is a generic BasicException.\n> Solution: Please throw a specific exception.''');
    });
  });
}
