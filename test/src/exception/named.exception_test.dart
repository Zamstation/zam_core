import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart' show ExceptionSeverity, NamedException;

void main() {
  group('NamedException:', () {
    final exception = NamedException.create(
      'Provided value is -26 which is negative.',
      solution: 'Please provide a positive value.',
      severity: ExceptionSeverity.warning,
      name: 'Invalid Height Exception',
    );

    test('Provided values are set successfully.', () {
      expect(exception.problem, 'Provided value is -26 which is negative.');
      expect(exception.solution, 'Please provide a positive value.');
      expect(exception.severity, ExceptionSeverity.warning);
      expect(exception.text,
          '''Invalid Height Exception has occured.\n> Problem: Provided value is -26 which is negative.\n> Solution: Please provide a positive value.''');
      expect(exception.toString(),
          '''Invalid Height Exception has occured.\n> Problem: Provided value is -26 which is negative.\n> Solution: Please provide a positive value.''');
    });
  });

  group('NamedException:', () {
    final exception = NamedException.fromRaw(
      NamedException.create('Provided value is -26 which is negative.'),
      StackTrace.empty,
    );

    test('fromRaw values are set successfully.', () {
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
