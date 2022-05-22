import 'package:test/test.dart';
import 'package:zam_core/core.dart'
    show BasicException, ExceptionSeverity, NamedException;

void main() {
  group('BasicException:', () {
    final exception =
        NamedException.create('Provided value is -26 which is negative.');

    test('Defaults are set successfully', () {
      expect(exception.key, 'UnnamedException');
      expect(exception.name, 'UnnamedException');
      expect(exception.category, BasicException);
      expect(exception.problem, 'Provided value is -26 which is negative.');
      expect(exception.solution, '<none>');
      expect(exception.severity, ExceptionSeverity.none);
      expect(exception.text,
          '''UnnamedException has occured.\n> Problem: Provided value is -26 which is negative.\n> Solution: <none>''');
      expect(exception.toString(),
          '''UnnamedException has occured.\n> Problem: Provided value is -26 which is negative.\n> Solution: <none>''');
    });
  });
}
